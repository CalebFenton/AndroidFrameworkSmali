.class public final Landroid/app/AppOpsManager$HistoricalOpsRequest;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoricalOpsRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mAttributionTag:Ljava/lang/String;

.field private final blacklist mBeginTimeMillis:J

.field private final blacklist mEndTimeMillis:J

.field private final blacklist mFilter:I

.field private final blacklist mFlags:I

.field private final blacklist mHistoryFlags:I

.field private final blacklist mOpNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mUid:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAttributionTag(Landroid/app/AppOpsManager$HistoricalOpsRequest;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mAttributionTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBeginTimeMillis(Landroid/app/AppOpsManager$HistoricalOpsRequest;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mBeginTimeMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEndTimeMillis(Landroid/app/AppOpsManager$HistoricalOpsRequest;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mEndTimeMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFilter(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I
    .registers 1

    iget p0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mFilter:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlags(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I
    .registers 1

    iget p0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHistoryFlags(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I
    .registers 1

    iget p0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mHistoryFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOpNames(Landroid/app/AppOpsManager$HistoricalOpsRequest;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mOpNames:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPackageName(Landroid/app/AppOpsManager$HistoricalOpsRequest;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUid(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I
    .registers 1

    iget p0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mUid:I

    return p0
.end method

.method private constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJI)V
    .registers 12
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p5, "historyFlags"    # I
    .param p6, "filter"    # I
    .param p7, "beginTimeMillis"    # J
    .param p9, "endTimeMillis"    # J
    .param p11, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIJJI)V"
        }
    .end annotation

    .line 5479
    .local p4, "opNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5480
    iput p1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mUid:I

    .line 5481
    iput-object p2, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mPackageName:Ljava/lang/String;

    .line 5482
    iput-object p3, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mAttributionTag:Ljava/lang/String;

    .line 5483
    iput-object p4, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mOpNames:Ljava/util/List;

    .line 5484
    iput p5, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mHistoryFlags:I

    .line 5485
    iput p6, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mFilter:I

    .line 5486
    iput-wide p7, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mBeginTimeMillis:J

    .line 5487
    iput-wide p9, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mEndTimeMillis:J

    .line 5488
    iput p11, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mFlags:I

    .line 5489
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJILandroid/app/AppOpsManager-IA;)V
    .registers 13

    invoke-direct/range {p0 .. p11}, Landroid/app/AppOpsManager$HistoricalOpsRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJI)V

    return-void
.end method
