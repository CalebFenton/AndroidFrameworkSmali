.class public Landroid/database/sqlite/SQLiteDebug$PagerStats;
.super Ljava/lang/Object;
.source "SQLiteDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PagerStats"
.end annotation


# instance fields
.field public greylist dbStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/database/sqlite/SQLiteDebug$DbStats;",
            ">;"
        }
    .end annotation
.end field

.field public greylist largestMemAlloc:I

.field public greylist memoryUsed:I

.field public greylist-max-r pageCacheOverflow:I


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    return-void
.end method
