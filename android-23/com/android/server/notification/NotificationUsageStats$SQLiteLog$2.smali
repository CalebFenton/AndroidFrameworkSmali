.class Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$2;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # Ljava/lang/String;
    .param p4, "$anonymous2"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p5, "$anonymous3"    # I

    #@0
    .prologue
    .line 803
    iput-object p1, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$2;->this$1:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    #@2
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    #@5
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    #@0
    .prologue
    .line 806
    const-string/jumbo v0, "CREATE TABLE log (_id INTEGER PRIMARY KEY AUTOINCREMENT,event_user_id INT,event_type INT,event_time_ms INT,key TEXT,pkg TEXT,nid INT,tag TEXT,when_ms INT,defaults INT,flags INT,priority INT,category TEXT,action_count INT,posttime_ms INT,airtime_ms INT,first_expansion_time_ms INT,expansion_airtime_ms INT,expansion_count INT)"

    #@3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #@6
    .line 805
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    #@0
    .prologue
    .line 831
    const/4 v0, 0x3

    #@1
    if-gt p2, v0, :cond_0

    #@3
    .line 833
    const-string/jumbo v0, "DROP TABLE IF EXISTS log"

    #@6
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #@9
    .line 834
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$2;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    #@c
    .line 830
    :cond_0
    return-void
.end method
