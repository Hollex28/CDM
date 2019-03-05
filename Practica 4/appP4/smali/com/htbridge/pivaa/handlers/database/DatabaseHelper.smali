.class public Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field private static final DATABASE_NAME:Ljava/lang/String; = "pivaaDB"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final KEY_AUTHOR:Ljava/lang/String; = "author"

.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final TABLE_DATA:Ljava/lang/String; = "data"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "author"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const-string/jumbo v0, "pivaaDB"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 31
    return-void
.end method


# virtual methods
.method public addRecord(Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;)V
    .locals 5
    .param p1, "record"    # Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;

    .prologue
    .line 79
    :try_start_0
    const-string/jumbo v3, "htbridge"

    invoke-virtual {p1}, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p0}, Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 83
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 84
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "title"

    invoke-virtual {p1}, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string/jumbo v3, "author"

    invoke-virtual {p1}, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;->getAuthor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string/jumbo v3, "data"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 91
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteRecord(Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;)V
    .locals 7
    .param p1, "record"    # Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;

    .prologue
    .line 192
    :try_start_0
    const-string/jumbo v2, "htbridge"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deleteRecord: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {p0}, Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 196
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v2, "data"

    const-string/jumbo v3, "id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 197
    invoke-virtual {p1}, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 196
    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 200
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getAllRecords()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v4, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 135
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v5, "SELECT * FROM data"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 137
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 138
    .local v3, "record":Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 140
    :cond_0
    new-instance v3, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;

    .end local v3    # "record":Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;
    invoke-direct {v3}, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;-><init>()V

    .line 141
    .restart local v3    # "record":Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;->setId(I)V

    .line 142
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;->setTitle(Ljava/lang/String;)V

    .line 143
    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;->setAuthor(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 150
    :cond_1
    const-string/jumbo v5, "htbridge"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getAllRecords(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "record":Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;
    :goto_0
    return-object v4

    .line 151
    :catch_0
    move-exception v2

    .line 152
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getRecord(I)Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;
    .locals 7
    .param p1, "id"    # I

    .prologue
    .line 104
    new-instance v3, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;

    invoke-direct {v3}, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;-><init>()V

    .line 107
    .local v3, "record":Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;
    :try_start_0
    invoke-virtual {p0}, Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 108
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "select * from data where id=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x22

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 110
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 112
    :cond_0
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;->setId(I)V

    .line 113
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;->setTitle(Ljava/lang/String;)V

    .line 114
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;->setAuthor(Ljava/lang/String;)V

    .line 116
    const-string/jumbo v4, "htbridge"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getRecord("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-object v3

    .line 118
    :catch_0
    move-exception v2

    .line 119
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 56
    :try_start_0
    const-string/jumbo v0, "CREATE TABLE data ( id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, author TEXT )"

    .line 62
    .local v0, "CREATE_DATA_TABLE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v0    # "CREATE_DATA_TABLE":Ljava/lang/String;
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public initDatabaseOuter()V
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 70
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0, v0}, Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 71
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 36
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 41
    const-string/jumbo v0, "DROP TABLE IF EXISTS data"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 45
    return-void
.end method

.method public rawSQLQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 218
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string/jumbo v4, "htbridge"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rawSQLQuery: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v4, 0x0

    invoke-virtual {v1, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 221
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 223
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_1

    .line 224
    invoke-static {v0}, Landroid/database/DatabaseUtils;->dumpCurrentRowToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, "e":Ljava/lang/String;
    const-string/jumbo v4, "htbridge"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 232
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "e":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 233
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 236
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 238
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public rawSQLQueryCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 253
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string/jumbo v4, "htbridge"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rawSQLQueryCursor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v4, 0x0

    invoke-virtual {v1, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 263
    :goto_0
    return-object v0

    .line 259
    :catch_0
    move-exception v2

    .line 260
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateRecord(Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;)I
    .locals 9
    .param p1, "record"    # Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;

    .prologue
    .line 165
    const/4 v2, -0x1

    .line 168
    .local v2, "i":I
    :try_start_0
    invoke-virtual {p0}, Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 170
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 171
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "title"

    invoke-virtual {p1}, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string/jumbo v4, "author"

    invoke-virtual {p1}, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;->getAuthor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string/jumbo v4, "data"

    const-string/jumbo v5, "id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 175
    invoke-virtual {p1}, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 174
    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 178
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "values":Landroid/content/ContentValues;
    :goto_0
    return v2

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
