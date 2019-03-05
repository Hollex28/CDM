.class public Lcom/htbridge/pivaa/BroadcastReceiverActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BroadcastReceiverActivity.java"


# instance fields
.field private location:Ljava/lang/String;

.field private myWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/htbridge/pivaa/BroadcastReceiverActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/htbridge/pivaa/BroadcastReceiverActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htbridge/pivaa/BroadcastReceiverActivity;->location:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htbridge/pivaa/BroadcastReceiverActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/htbridge/pivaa/BroadcastReceiverActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htbridge/pivaa/BroadcastReceiverActivity;->myWebView:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    .line 46
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v7, 0x7f0a001d

    invoke-virtual {p0, v7}, Lcom/htbridge/pivaa/BroadcastReceiverActivity;->setContentView(I)V

    .line 49
    const v7, 0x7f0800e9

    invoke-virtual {p0, v7}, Lcom/htbridge/pivaa/BroadcastReceiverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/Toolbar;

    .line 50
    .local v5, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {p0, v5}, Lcom/htbridge/pivaa/BroadcastReceiverActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 52
    const v7, 0x7f0800fc

    invoke-virtual {p0, v7}, Lcom/htbridge/pivaa/BroadcastReceiverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/webkit/WebView;

    iput-object v7, p0, Lcom/htbridge/pivaa/BroadcastReceiverActivity;->myWebView:Landroid/webkit/WebView;

    .line 53
    iget-object v7, p0, Lcom/htbridge/pivaa/BroadcastReceiverActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    .line 54
    .local v6, "webSettings":Landroid/webkit/WebSettings;
    iget-object v7, p0, Lcom/htbridge/pivaa/BroadcastReceiverActivity;->myWebView:Landroid/webkit/WebView;

    new-instance v8, Landroid/webkit/WebChromeClient;

    invoke-direct {v8}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 57
    invoke-virtual {v6, v9}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 58
    invoke-virtual {v6, v9}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 59
    invoke-virtual {v6, v9}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 61
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/htbridge/pivaa/BroadcastReceiverActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/broadcast.html"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htbridge/pivaa/BroadcastReceiverActivity;->location:Ljava/lang/String;

    .line 62
    iget-object v7, p0, Lcom/htbridge/pivaa/BroadcastReceiverActivity;->myWebView:Landroid/webkit/WebView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "file://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htbridge/pivaa/BroadcastReceiverActivity;->location:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 64
    const/4 v1, 0x0

    .line 66
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/htbridge/pivaa/BroadcastReceiverActivity;->location:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v2, v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 68
    .local v4, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v7, "Your new file"

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 70
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 71
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 79
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "pw":Ljava/io/PrintWriter;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    const v7, 0x7f080032

    invoke-virtual {p0, v7}, Lcom/htbridge/pivaa/BroadcastReceiverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 80
    .local v3, "mWebviewButtonLink1":Landroid/widget/Button;
    new-instance v7, Lcom/htbridge/pivaa/BroadcastReceiverActivity$1;

    invoke-direct {v7, p0}, Lcom/htbridge/pivaa/BroadcastReceiverActivity$1;-><init>(Lcom/htbridge/pivaa/BroadcastReceiverActivity;)V

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    return-void

    .line 72
    .end local v3    # "mWebviewButtonLink1":Landroid/widget/Button;
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 72
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/htbridge/pivaa/BroadcastReceiverActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0b0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 40
    new-instance v0, Lcom/htbridge/pivaa/handlers/MenuHandler;

    invoke-direct {v0}, Lcom/htbridge/pivaa/handlers/MenuHandler;-><init>()V

    .line 41
    .local v0, "menuHandler":Lcom/htbridge/pivaa/handlers/MenuHandler;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/htbridge/pivaa/handlers/MenuHandler;->route(Landroid/app/Activity;I)Z

    move-result v1

    return v1
.end method
