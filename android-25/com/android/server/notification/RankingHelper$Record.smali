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
.field importance:I

.field pkg:Ljava/lang/String;

.field priority:I

.field uid:I

.field visibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 534
    const/16 v0, -0x2710

    #@2
    sput v0, Lcom/android/server/notification/RankingHelper$Record;->UNKNOWN_UID:I

    #@4
    .line 533
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, -0x3e8

    #@2
    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 537
    sget v0, Lcom/android/server/notification/RankingHelper$Record;->UNKNOWN_UID:I

    #@7
    iput v0, p0, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    #@9
    .line 538
    iput v1, p0, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    #@b
    .line 539
    const/4 v0, 0x0

    #@c
    iput v0, p0, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    #@e
    .line 540
    iput v1, p0, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    #@10
    .line 533
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
