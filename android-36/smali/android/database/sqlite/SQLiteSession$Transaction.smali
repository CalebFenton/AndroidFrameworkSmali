.class final Landroid/database/sqlite/SQLiteSession$Transaction;
.super Ljava/lang/Object;
.source "SQLiteSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Transaction"
.end annotation


# instance fields
.field public greylist-max-o mChildFailed:Z

.field public greylist-max-o mListener:Landroid/database/sqlite/SQLiteTransactionListener;

.field public greylist-max-o mMarkedSuccessful:Z

.field public greylist-max-o mMode:I

.field public greylist-max-o mParent:Landroid/database/sqlite/SQLiteSession$Transaction;


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 1073
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/database/sqlite/SQLiteSession-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession$Transaction;-><init>()V

    return-void
.end method
