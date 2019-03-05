.class public Lcom/htbridge/pivaa/handlers/API;
.super Landroid/support/v7/app/AppCompatActivity;
.source "API.java"


# static fields
.field static final DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/htbridge/pivaa/handlers/API$1;

    invoke-direct {v0}, Lcom/htbridge/pivaa/handlers/API$1;-><init>()V

    sput-object v0, Lcom/htbridge/pivaa/handlers/API;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 28
    return-void
.end method

.method private static trustAllHosts()V
    .locals 5

    .prologue
    .line 42
    const/4 v3, 0x1

    new-array v2, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Lcom/htbridge/pivaa/handlers/API$2;

    invoke-direct {v4}, Lcom/htbridge/pivaa/handlers/API$2;-><init>()V

    aput-object v4, v2, v3

    .line 58
    .local v2, "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    :try_start_0
    const-string/jumbo v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 59
    .local v1, "sc":Ljavax/net/ssl/SSLContext;
    const/4 v3, 0x0

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v3, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 60
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-static {v3}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v1    # "sc":Ljavax/net/ssl/SSLContext;
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "inputedURL"    # Ljava/lang/String;

    .prologue
    .line 71
    const/4 v8, 0x0

    .line 72
    .local v8, "urlConnection":Ljava/net/HttpURLConnection;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .local v6, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 77
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "https"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 78
    invoke-static {}, Lcom/htbridge/pivaa/handlers/API;->trustAllHosts()V

    .line 79
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    .line 80
    .local v2, "https":Ljavax/net/ssl/HttpsURLConnection;
    sget-object v9, Lcom/htbridge/pivaa/handlers/API;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v2, v9}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 81
    move-object v8, v2

    .line 86
    .end local v2    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :goto_0
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 87
    .local v5, "inputStream":Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 90
    .local v3, "in":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "inputLine":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 92
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 97
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "inputLine":Ljava/lang/String;
    .end local v5    # "inputStream":Ljava/io/InputStreamReader;
    .end local v7    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 103
    const-string/jumbo v9, ""

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v9

    .line 83
    .restart local v7    # "url":Ljava/net/URL;
    :cond_0
    :try_start_2
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    goto :goto_0

    .line 94
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "inputLine":Ljava/lang/String;
    .restart local v5    # "inputStream":Ljava/io/InputStreamReader;
    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 95
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    .line 100
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "inputLine":Ljava/lang/String;
    .end local v5    # "inputStream":Ljava/io/InputStreamReader;
    .end local v7    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v9

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v9
.end method
