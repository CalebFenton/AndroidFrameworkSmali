.class Lcom/android/server/notification/RankingHelper$Record;
.super Ljava/lang/Object;
.source "RankingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/RankingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Record"
.end annotation


# static fields
.field static UNKNOWN_UID:I


# instance fields
.field peekable:Z

.field pkg:Ljava/lang/String;

.field priority:I

.field uid:I

.field visibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 455
    const/16 v0, -0x2710

    #@2
    sput v0, Lcom/android/server/notification/RankingHelper$Record;->UNKNOWN_UID:I

    #@4
    .line 454
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 458
    sget v0, Lcom/android/server/notification/RankingHelper$Record;->UNKNOWN_UID:I

    #@5
    iput v0, p0, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    #@7
    .line 459
    const/4 v0, 0x0

    #@8
    iput v0, p0, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    #@a
    .line 460
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Lcom/android/server/notification/RankingHelper$Record;->peekable:Z

    #@d
    .line 461
    const/16 v0, -0x3e8

    #@f
    iput v0, p0, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    #@11
    .line 454
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/RankingHelper$Record;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper$Record;-><init>()V

    #@3
    return-void
.end method
