.class final Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
.super Ljava/lang/Object;
.source "SQLiteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PreparedStatement"
.end annotation


# instance fields
.field public greylist-max-o mInCache:Z

.field public greylist-max-o mInUse:Z

.field public greylist-max-o mNumParameters:I

.field public greylist-max-o mPoolNext:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

.field public greylist-max-o mReadOnly:Z

.field public blacklist mSeqNum:J

.field public greylist-max-o mSql:Ljava/lang/String;

.field public greylist-max-o mStatementPtr:J

.field public greylist-max-o mType:I


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 1505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
