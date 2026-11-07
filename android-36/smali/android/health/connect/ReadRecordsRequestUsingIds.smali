.class public final Landroid/health/connect/ReadRecordsRequestUsingIds;
.super Landroid/health/connect/ReadRecordsRequest;
.source "ReadRecordsRequestUsingIds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/ReadRecordsRequestUsingIds$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/health/connect/datatypes/Record;",
        ">",
        "Landroid/health/connect/ReadRecordsRequest<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final blacklist mRecordIdFiltersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/RecordIdFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Ljava/lang/Class;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/List<",
            "Landroid/health/connect/RecordIdFilter;",
            ">;)V"
        }
    .end annotation

    .line 53
    .local p0, "this":Landroid/health/connect/ReadRecordsRequestUsingIds;, "Landroid/health/connect/ReadRecordsRequestUsingIds<TT;>;"
    .local p1, "recordType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "recordIdFiltersList":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/RecordIdFilter;>;"
    invoke-direct {p0, p1}, Landroid/health/connect/ReadRecordsRequest;-><init>(Ljava/lang/Class;)V

    .line 54
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iput-object p2, p0, Landroid/health/connect/ReadRecordsRequestUsingIds;->mRecordIdFiltersList:Ljava/util/List;

    .line 56
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/Class;Ljava/util/List;Landroid/health/connect/ReadRecordsRequestUsingIds-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/health/connect/ReadRecordsRequestUsingIds;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public whitelist getRecordIdFilters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/health/connect/RecordIdFilter;",
            ">;"
        }
    .end annotation

    .line 61
    .local p0, "this":Landroid/health/connect/ReadRecordsRequestUsingIds;, "Landroid/health/connect/ReadRecordsRequestUsingIds<TT;>;"
    iget-object v0, p0, Landroid/health/connect/ReadRecordsRequestUsingIds;->mRecordIdFiltersList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist toReadRecordsRequestParcel()Landroid/health/connect/aidl/ReadRecordsRequestParcel;
    .registers 2

    .line 71
    .local p0, "this":Landroid/health/connect/ReadRecordsRequestUsingIds;, "Landroid/health/connect/ReadRecordsRequestUsingIds<TT;>;"
    new-instance v0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;

    invoke-direct {v0, p0}, Landroid/health/connect/aidl/ReadRecordsRequestParcel;-><init>(Landroid/health/connect/ReadRecordsRequestUsingIds;)V

    return-object v0
.end method
