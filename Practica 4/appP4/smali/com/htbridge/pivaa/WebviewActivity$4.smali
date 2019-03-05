.class Lcom/htbridge/pivaa/WebviewActivity$4;
.super Ljava/lang/Object;
.source "WebviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htbridge/pivaa/WebviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htbridge/pivaa/WebviewActivity;


# direct methods
.method constructor <init>(Lcom/htbridge/pivaa/WebviewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/htbridge/pivaa/WebviewActivity;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/htbridge/pivaa/WebviewActivity$4;->this$0:Lcom/htbridge/pivaa/WebviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 104
    iget-object v1, p0, Lcom/htbridge/pivaa/WebviewActivity$4;->this$0:Lcom/htbridge/pivaa/WebviewActivity;

    const v2, 0x7f0800f5

    invoke-virtual {v1, v2}, Lcom/htbridge/pivaa/WebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 105
    .local v0, "mWebviewURLView":Landroid/widget/EditText;
    iget-object v1, p0, Lcom/htbridge/pivaa/WebviewActivity$4;->this$0:Lcom/htbridge/pivaa/WebviewActivity;

    invoke-static {v1}, Lcom/htbridge/pivaa/WebviewActivity;->access$000(Lcom/htbridge/pivaa/WebviewActivity;)Landroid/webkit/WebView;

    move-result-object v1

    const-string/jumbo v2, "http://google.com"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 106
    const-string/jumbo v1, "http://google.com"

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 107
    return-void
.end method
