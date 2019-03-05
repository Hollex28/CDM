.class Lcom/htbridge/pivaa/LoadCodeActivity$1;
.super Ljava/lang/Object;
.source "LoadCodeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htbridge/pivaa/LoadCodeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htbridge/pivaa/LoadCodeActivity;


# direct methods
.method constructor <init>(Lcom/htbridge/pivaa/LoadCodeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/htbridge/pivaa/LoadCodeActivity;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/htbridge/pivaa/LoadCodeActivity$1;->this$0:Lcom/htbridge/pivaa/LoadCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 52
    const-string/jumbo v3, "htbridge"

    const-string/jumbo v4, "Load code button clicked"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v0, Lcom/htbridge/pivaa/handlers/LoadCode;

    iget-object v3, p0, Lcom/htbridge/pivaa/LoadCodeActivity$1;->this$0:Lcom/htbridge/pivaa/LoadCodeActivity;

    invoke-virtual {v3}, Lcom/htbridge/pivaa/LoadCodeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/htbridge/pivaa/handlers/LoadCode;-><init>(Landroid/content/Context;)V

    .line 54
    .local v0, "loadCode":Lcom/htbridge/pivaa/handlers/LoadCode;
    const-string/jumbo v3, "com.htbridge.raw.ExternalCode"

    invoke-virtual {v0, v3}, Lcom/htbridge/pivaa/handlers/LoadCode;->load(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "result":Ljava/lang/String;
    iget-object v3, p0, Lcom/htbridge/pivaa/LoadCodeActivity$1;->this$0:Lcom/htbridge/pivaa/LoadCodeActivity;

    const v4, 0x7f08009e

    invoke-virtual {v3, v4}, Lcom/htbridge/pivaa/LoadCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 57
    .local v1, "mOutputLoadCodeView":Landroid/widget/TextView;
    sget-object v3, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 58
    return-void
.end method
