.class Lcom/htbridge/pivaa/WebviewActivity$5;
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
    .line 113
    iput-object p1, p0, Lcom/htbridge/pivaa/WebviewActivity$5;->this$0:Lcom/htbridge/pivaa/WebviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 117
    const-string/jumbo v0, "htbridge"

    const-string/jumbo v1, "Clicked XSS button"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/htbridge/pivaa/WebviewActivity$5;->this$0:Lcom/htbridge/pivaa/WebviewActivity;

    invoke-static {v0}, Lcom/htbridge/pivaa/WebviewActivity;->access$000(Lcom/htbridge/pivaa/WebviewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const-string/jumbo v1, "javascript:alert(\'Hello World!\')"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 119
    return-void
.end method
