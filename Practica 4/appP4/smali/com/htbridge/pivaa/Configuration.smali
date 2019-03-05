.class public Lcom/htbridge/pivaa/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# instance fields
.field public default_author_database_item:Ljava/lang/String;

.field public default_title_database_item:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public url_json:Ljava/lang/String;

.field public url_webview:Ljava/lang/String;

.field public url_webview_link_1:Ljava/lang/String;

.field public url_webview_link_2:Ljava/lang/String;

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string/jumbo v0, "https://www.htbridge.com/ssl/api/v1/load_all/1510314123771.html?_=1510314123152"

    iput-object v0, p0, Lcom/htbridge/pivaa/Configuration;->url_json:Ljava/lang/String;

    .line 10
    const-string/jumbo v0, "https://www.htbridge.com/ssl/"

    iput-object v0, p0, Lcom/htbridge/pivaa/Configuration;->url_webview:Ljava/lang/String;

    .line 11
    const-string/jumbo v0, "file:///etc/hosts"

    iput-object v0, p0, Lcom/htbridge/pivaa/Configuration;->url_webview_link_1:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, "https://xss.rocks/scriptlet.html"

    iput-object v0, p0, Lcom/htbridge/pivaa/Configuration;->url_webview_link_2:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, "My Vulnerable Android Application"

    iput-object v0, p0, Lcom/htbridge/pivaa/Configuration;->default_title_database_item:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, "High-Tech Bridge"

    iput-object v0, p0, Lcom/htbridge/pivaa/Configuration;->default_author_database_item:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "test"

    iput-object v0, p0, Lcom/htbridge/pivaa/Configuration;->username:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "verycomplicatedpassword"

    iput-object v0, p0, Lcom/htbridge/pivaa/Configuration;->password:Ljava/lang/String;

    return-void
.end method
