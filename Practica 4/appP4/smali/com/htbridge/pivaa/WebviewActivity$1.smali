.class Lcom/htbridge/pivaa/WebviewActivity$1;
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
    .line 61
    iput-object p1, p0, Lcom/htbridge/pivaa/WebviewActivity$1;->this$0:Lcom/htbridge/pivaa/WebviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 65
    iget-object v2, p0, Lcom/htbridge/pivaa/WebviewActivity$1;->this$0:Lcom/htbridge/pivaa/WebviewActivity;

    const v3, 0x7f0800f5

    invoke-virtual {v2, v3}, Lcom/htbridge/pivaa/WebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 66
    .local v0, "mWebviewURLView":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lcom/htbridge/pivaa/WebviewActivity$1;->this$0:Lcom/htbridge/pivaa/WebviewActivity;

    invoke-static {v2}, Lcom/htbridge/pivaa/WebviewActivity;->access$000(Lcom/htbridge/pivaa/WebviewActivity;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 68
    return-void
.end method
