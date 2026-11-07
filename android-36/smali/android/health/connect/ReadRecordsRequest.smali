.class public abstract Landroid/health/connect/ReadRecordsRequest;
.super Ljava/lang/Object;
.source "ReadRecordsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/health/connect/datatypes/Record;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mRecordType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor blacklist <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Landroid/health/connect/ReadRecordsRequest;, "Landroid/health/connect/ReadRecordsRequest<TT;>;"
    .local p1, "recordType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iput-object p1, p0, Landroid/health/connect/ReadRecordsRequest;->mRecordType:Ljava/lang/Class;

    .line 41
    return-void
.end method


# virtual methods
.method public whitelist getRecordType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 46
    .local p0, "this":Landroid/health/connect/ReadRecordsRequest;, "Landroid/health/connect/ReadRecordsRequest<TT;>;"
    iget-object v0, p0, Landroid/health/connect/ReadRecordsRequest;->mRecordType:Ljava/lang/Class;

    return-object v0
.end method

.method abstract blacklist toReadRecordsRequestParcel()Landroid/health/connect/aidl/ReadRecordsRequestParcel;
.end method
