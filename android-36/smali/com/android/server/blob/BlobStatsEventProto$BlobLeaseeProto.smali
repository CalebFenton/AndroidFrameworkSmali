.class public final Lcom/android/server/blob/BlobStatsEventProto$BlobLeaseeProto;
.super Ljava/lang/Object;
.source "BlobStatsEventProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/blob/BlobStatsEventProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BlobLeaseeProto"
.end annotation


# static fields
.field public static final blacklist LEASE_EXPIRY_TIMESTAMP_MILLIS:J = 0x10300000002L

.field public static final blacklist UID:J = 0x10500000001L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/blob/BlobStatsEventProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/blob/BlobStatsEventProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
