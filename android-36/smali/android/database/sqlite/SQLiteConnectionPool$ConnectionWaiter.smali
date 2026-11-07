.class final Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
.super Ljava/lang/Object;
.source "SQLiteConnectionPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteConnectionPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConnectionWaiter"
.end annotation


# instance fields
.field public greylist-max-o mAssignedConnection:Landroid/database/sqlite/SQLiteConnection;

.field public greylist-max-o mConnectionFlags:I

.field public greylist-max-o mException:Ljava/lang/RuntimeException;

.field public greylist-max-o mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

.field public greylist-max-o mNonce:I

.field public greylist-max-o mPriority:I

.field public greylist-max-o mSql:Ljava/lang/String;

.field public greylist-max-o mStartTime:J

.field public greylist-max-o mThread:Ljava/lang/Thread;

.field public greylist-max-o mWantPrimaryConnection:Z


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 1273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/database/sqlite/SQLiteConnectionPool-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;-><init>()V

    return-void
.end method
