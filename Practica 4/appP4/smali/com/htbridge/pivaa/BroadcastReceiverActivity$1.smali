.class Lcom/htbridge/pivaa/BroadcastReceiverActivity$1;
.super Ljava/lang/Object;
.source "BroadcastReceiverActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htbridge/pivaa/BroadcastReceiverActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htbridge/pivaa/BroadcastReceiverActivity;


# direct methods
.method constructor <init>(Lcom/htbridge/pivaa/BroadcastReceiverActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/htbridge/pivaa/BroadcastReceiverActivity;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/htbridge/pivaa/BroadcastReceiverActivity$1;->this$0:Lcom/htbridge/pivaa/BroadcastReceiverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 83
    iget-object v4, p0, Lcom/htbridge/pivaa/BroadcastReceiverActivity$1;->this$0:Lcom/htbridge/pivaa/BroadcastReceiverActivity;

    const v5, 0x7f080080

    invoke-virtual {v4, v5}, Lcom/htbridge/pivaa/BroadcastReceiverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 84
    .local v3, "mBroadcastInputView":Landroid/widget/EditText;
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "input_broadcast":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 88
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "service.vulnerable.vulnerableservice.LOG"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string/jumbo v4, "data"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string/jumbo v4, "location"

    iget-object v5, p0, Lcom/htbridge/pivaa/BroadcastReceiverActivity$1;->this$0:Lcom/htbridge/pivaa/BroadcastReceiverActivity;

    invoke-static {v5}, Lcom/htbridge/pivaa/BroadcastReceiverActivity;->access$000(Lcom/htbridge/pivaa/BroadcastReceiverActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    iget-object v4, p0, Lcom/htbridge/pivaa/BroadcastReceiverActivity$1;->this$0:Lcom/htbridge/pivaa/BroadcastReceiverActivity;

    invoke-virtual {v4, v2}, Lcom/htbridge/pivaa/BroadcastReceiverActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 96
    const-wide/16 v4, 0x12c

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 97
    iget-object v4, p0, Lcom/htbridge/pivaa/BroadcastReceiverActivity$1;->this$0:Lcom/htbridge/pivaa/BroadcastReceiverActivity;

    invoke-static {v4}, Lcom/htbridge/pivaa/BroadcastReceiverActivity;->access$100(Lcom/htbridge/pivaa/BroadcastReceiverActivity;)Landroid/webkit/WebView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htbridge/pivaa/BroadcastReceiverActivity$1;->this$0:Lcom/htbridge/pivaa/BroadcastReceiverActivity;

    invoke-static {v6}, Lcom/htbridge/pivaa/BroadcastReceiverActivity;->access$000(Lcom/htbridge/pivaa/BroadcastReceiverActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
