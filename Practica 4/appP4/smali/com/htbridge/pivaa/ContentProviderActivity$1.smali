.class Lcom/htbridge/pivaa/ContentProviderActivity$1;
.super Ljava/lang/Object;
.source "ContentProviderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htbridge/pivaa/ContentProviderActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htbridge/pivaa/ContentProviderActivity;


# direct methods
.method constructor <init>(Lcom/htbridge/pivaa/ContentProviderActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/htbridge/pivaa/ContentProviderActivity;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htbridge/pivaa/ContentProviderActivity$1;->this$0:Lcom/htbridge/pivaa/ContentProviderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htbridge/pivaa/ContentProviderActivity$1;->this$0:Lcom/htbridge/pivaa/ContentProviderActivity;

    const v2, 0x7f0800f4

    invoke-virtual {v0, v2}, Lcom/htbridge/pivaa/ContentProviderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 56
    .local v9, "mQueryContentProviderView":Landroid/widget/EditText;
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 58
    .local v10, "query":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "content://com.htbridge.pivaa/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 59
    .local v12, "url":Ljava/lang/String;
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 62
    .local v1, "uri":Landroid/net/Uri;
    :try_start_0
    iget-object v0, p0, Lcom/htbridge/pivaa/ContentProviderActivity$1;->this$0:Lcom/htbridge/pivaa/ContentProviderActivity;

    invoke-virtual {v0}, Lcom/htbridge/pivaa/ContentProviderActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 64
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v11, "sb":Ljava/lang/StringBuilder;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 67
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    invoke-static {v6}, Landroid/database/DatabaseUtils;->dumpCurrentRowToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    .line 70
    .local v7, "e":Ljava/lang/String;
    const-string/jumbo v0, "htbridge"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "e":Ljava/lang/String;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v7

    .line 81
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 78
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htbridge/pivaa/ContentProviderActivity$1;->this$0:Lcom/htbridge/pivaa/ContentProviderActivity;

    const v2, 0x7f08009c

    invoke-virtual {v0, v2}, Lcom/htbridge/pivaa/ContentProviderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 79
    .local v8, "mOutputContentProviderView":Landroid/widget/TextView;
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v8, v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
