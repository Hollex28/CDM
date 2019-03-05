.class public Lcom/htbridge/pivaa/handlers/MenuHandler;
.super Landroid/app/Activity;
.source "MenuHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public route(Landroid/app/Activity;I)Z
    .locals 3
    .param p1, "mActivity"    # Landroid/app/Activity;
    .param p2, "itemId"    # I

    .prologue
    const/4 v2, 0x1

    .line 32
    sparse-switch p2, :sswitch_data_0

    .line 77
    :goto_0
    :sswitch_0
    return v2

    .line 37
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htbridge/pivaa/MainActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 41
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htbridge/pivaa/EncryptionActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 45
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htbridge/pivaa/WebviewActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 49
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htbridge/pivaa/DatabaseActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 53
    :sswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htbridge/pivaa/LoadCodeActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 57
    :sswitch_6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htbridge/pivaa/ServiceActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 61
    :sswitch_7
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htbridge/pivaa/BroadcastReceiverActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 65
    :sswitch_8
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htbridge/pivaa/SerializeActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 69
    :sswitch_9
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htbridge/pivaa/ContentProviderActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 73
    :sswitch_a
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htbridge/pivaa/AboutActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 32
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080007 -> :sswitch_a
        0x7f08000f -> :sswitch_7
        0x7f080011 -> :sswitch_9
        0x7f080013 -> :sswitch_4
        0x7f080015 -> :sswitch_2
        0x7f080017 -> :sswitch_5
        0x7f080018 -> :sswitch_1
        0x7f08001e -> :sswitch_8
        0x7f08001f -> :sswitch_6
        0x7f080020 -> :sswitch_0
        0x7f080022 -> :sswitch_3
    .end sparse-switch
.end method
