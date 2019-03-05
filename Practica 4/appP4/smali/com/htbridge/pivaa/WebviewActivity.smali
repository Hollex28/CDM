.class public Lcom/htbridge/pivaa/WebviewActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "WebviewActivity.java"


# instance fields
.field private config:Lcom/htbridge/pivaa/Configuration;

.field private myWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/htbridge/pivaa/WebviewActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/htbridge/pivaa/WebviewActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htbridge/pivaa/WebviewActivity;->myWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htbridge/pivaa/WebviewActivity;)Lcom/htbridge/pivaa/Configuration;
    .locals 1
    .param p0, "x0"    # Lcom/htbridge/pivaa/WebviewActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htbridge/pivaa/WebviewActivity;->config:Lcom/htbridge/pivaa/Configuration;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    .line 38
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v8, 0x7f0a0025

    invoke-virtual {p0, v8}, Lcom/htbridge/pivaa/WebviewActivity;->setContentView(I)V

    .line 41
    const v8, 0x7f0800e9

    invoke-virtual {p0, v8}, Lcom/htbridge/pivaa/WebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/Toolbar;

    .line 42
    .local v6, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {p0, v6}, Lcom/htbridge/pivaa/WebviewActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 44
    const v8, 0x7f0800fb

    invoke-virtual {p0, v8}, Lcom/htbridge/pivaa/WebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/webkit/WebView;

    iput-object v8, p0, Lcom/htbridge/pivaa/WebviewActivity;->myWebView:Landroid/webkit/WebView;

    .line 45
    iget-object v8, p0, Lcom/htbridge/pivaa/WebviewActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    .line 46
    .local v7, "webSettings":Landroid/webkit/WebSettings;
    iget-object v8, p0, Lcom/htbridge/pivaa/WebviewActivity;->myWebView:Landroid/webkit/WebView;

    new-instance v9, Landroid/webkit/WebChromeClient;

    invoke-direct {v9}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 49
    invoke-virtual {v7, v10}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 50
    invoke-virtual {v7, v10}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 51
    sget-object v8, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v7, v8}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 52
    invoke-virtual {v7, v10}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 56
    new-instance v8, Lcom/htbridge/pivaa/Configuration;

    invoke-direct {v8}, Lcom/htbridge/pivaa/Configuration;-><init>()V

    iput-object v8, p0, Lcom/htbridge/pivaa/WebviewActivity;->config:Lcom/htbridge/pivaa/Configuration;

    .line 60
    const v8, 0x7f080040

    invoke-virtual {p0, v8}, Lcom/htbridge/pivaa/WebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 61
    .local v0, "mWebviewButton":Landroid/widget/Button;
    new-instance v8, Lcom/htbridge/pivaa/WebviewActivity$1;

    invoke-direct {v8, p0}, Lcom/htbridge/pivaa/WebviewActivity$1;-><init>(Lcom/htbridge/pivaa/WebviewActivity;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v8, 0x7f080041

    invoke-virtual {p0, v8}, Lcom/htbridge/pivaa/WebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 74
    .local v1, "mWebviewButtonLink1":Landroid/widget/Button;
    new-instance v8, Lcom/htbridge/pivaa/WebviewActivity$2;

    invoke-direct {v8, p0}, Lcom/htbridge/pivaa/WebviewActivity$2;-><init>(Lcom/htbridge/pivaa/WebviewActivity;)V

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v8, 0x7f080042

    invoke-virtual {p0, v8}, Lcom/htbridge/pivaa/WebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 87
    .local v2, "mWebviewButtonLink2":Landroid/widget/Button;
    new-instance v8, Lcom/htbridge/pivaa/WebviewActivity$3;

    invoke-direct {v8, p0}, Lcom/htbridge/pivaa/WebviewActivity$3;-><init>(Lcom/htbridge/pivaa/WebviewActivity;)V

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v8, 0x7f080043

    invoke-virtual {p0, v8}, Lcom/htbridge/pivaa/WebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 100
    .local v3, "mWebviewButtonLink3":Landroid/widget/Button;
    new-instance v8, Lcom/htbridge/pivaa/WebviewActivity$4;

    invoke-direct {v8, p0}, Lcom/htbridge/pivaa/WebviewActivity$4;-><init>(Lcom/htbridge/pivaa/WebviewActivity;)V

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v8, 0x7f080044

    invoke-virtual {p0, v8}, Lcom/htbridge/pivaa/WebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 113
    .local v5, "mXSSButton":Landroid/widget/Button;
    new-instance v8, Lcom/htbridge/pivaa/WebviewActivity$5;

    invoke-direct {v8, p0}, Lcom/htbridge/pivaa/WebviewActivity$5;-><init>(Lcom/htbridge/pivaa/WebviewActivity;)V

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v8, 0x7f0800f5

    invoke-virtual {p0, v8}, Lcom/htbridge/pivaa/WebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 125
    .local v4, "mWebviewURLView":Landroid/widget/EditText;
    iget-object v8, p0, Lcom/htbridge/pivaa/WebviewActivity;->config:Lcom/htbridge/pivaa/Configuration;

    iget-object v8, v8, Lcom/htbridge/pivaa/Configuration;->url_webview:Ljava/lang/String;

    sget-object v9, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 128
    iget-object v8, p0, Lcom/htbridge/pivaa/WebviewActivity;->myWebView:Landroid/webkit/WebView;

    iget-object v9, p0, Lcom/htbridge/pivaa/WebviewActivity;->config:Lcom/htbridge/pivaa/Configuration;

    iget-object v9, v9, Lcom/htbridge/pivaa/Configuration;->url_webview:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/htbridge/pivaa/WebviewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0b0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 31
    new-instance v0, Lcom/htbridge/pivaa/handlers/MenuHandler;

    invoke-direct {v0}, Lcom/htbridge/pivaa/handlers/MenuHandler;-><init>()V

    .line 32
    .local v0, "menuHandler":Lcom/htbridge/pivaa/handlers/MenuHandler;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/htbridge/pivaa/handlers/MenuHandler;->route(Landroid/app/Activity;I)Z

    move-result v1

    return v1
.end method
