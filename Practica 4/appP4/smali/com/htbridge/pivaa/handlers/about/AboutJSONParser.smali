.class public Lcom/htbridge/pivaa/handlers/about/AboutJSONParser;
.super Ljava/lang/Object;
.source "AboutJSONParser.java"


# instance fields
.field context:Landroid/content/Context;

.field path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/htbridge/pivaa/handlers/about/AboutJSONParser;->path:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/htbridge/pivaa/handlers/about/AboutJSONParser;->path:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/htbridge/pivaa/handlers/about/AboutJSONParser;->context:Landroid/content/Context;

    .line 21
    return-void
.end method

.method private readJsonStream(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htbridge/pivaa/handlers/about/AboutRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    :try_start_0
    new-instance v2, Landroid/util/JsonReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v3, p1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .local v2, "reader":Landroid/util/JsonReader;
    :try_start_1
    invoke-direct {p0, v2}, Lcom/htbridge/pivaa/handlers/about/AboutJSONParser;->readMessagesArray(Landroid/util/JsonReader;)Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 49
    :try_start_2
    invoke-virtual {v2}, Landroid/util/JsonReader;->close()V

    .line 56
    .end local v2    # "reader":Landroid/util/JsonReader;
    :goto_0
    return-object v1

    .line 49
    .restart local v2    # "reader":Landroid/util/JsonReader;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/util/JsonReader;->close()V

    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 51
    .end local v2    # "reader":Landroid/util/JsonReader;
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htbridge/pivaa/handlers/about/AboutRecord;>;"
    goto :goto_0
.end method

.method private readMessage(Landroid/util/JsonReader;)Lcom/htbridge/pivaa/handlers/about/AboutRecord;
    .locals 4
    .param p1, "reader"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    const-string/jumbo v2, ""

    .line 84
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 86
    .local v0, "description":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 87
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 88
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v3, "name"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 93
    :cond_0
    const-string/jumbo v3, "description"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 100
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 101
    new-instance v3, Lcom/htbridge/pivaa/handlers/about/AboutRecord;

    invoke-direct {v3, v2, v0}, Lcom/htbridge/pivaa/handlers/about/AboutRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private readMessagesArray(Landroid/util/JsonReader;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "reader"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htbridge/pivaa/handlers/about/AboutRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v0, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htbridge/pivaa/handlers/about/AboutRecord;>;"
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 69
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-direct {p0, p1}, Lcom/htbridge/pivaa/handlers/about/AboutJSONParser;->readMessage(Landroid/util/JsonReader;)Lcom/htbridge/pivaa/handlers/about/AboutRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    .line 73
    return-object v0
.end method


# virtual methods
.method public parse()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htbridge/pivaa/handlers/about/AboutRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    :try_start_0
    iget-object v3, p0, Lcom/htbridge/pivaa/handlers/about/AboutJSONParser;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    iget-object v4, p0, Lcom/htbridge/pivaa/handlers/about/AboutJSONParser;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 27
    .local v1, "in":Ljava/io/InputStream;
    invoke-direct {p0, v1}, Lcom/htbridge/pivaa/handlers/about/AboutJSONParser;->readJsonStream(Ljava/io/InputStream;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 34
    .end local v1    # "in":Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htbridge/pivaa/handlers/about/AboutRecord;>;"
    goto :goto_0
.end method
