.class public final Lcom/android/server/am/ProcessOomProto$Detail;
.super Ljava/lang/Object;
.source "ProcessOomProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessOomProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Detail"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ProcessOomProto$Detail$CpuRunTime;
    }
.end annotation


# static fields
.field public static final blacklist CACHED:J = 0x1080000000cL

.field public static final blacklist CURRENT_STATE:J = 0x10e00000007L

.field public static final blacklist CUR_ADJ:J = 0x10500000004L

.field public static final blacklist CUR_RAW_ADJ:J = 0x10500000002L

.field public static final blacklist EMPTY:J = 0x1080000000dL

.field public static final blacklist HAS_ABOVE_CLIENT:J = 0x1080000000eL

.field public static final blacklist LAST_CACHED_PSS:J = 0x1090000000bL

.field public static final blacklist LAST_PSS:J = 0x10900000009L

.field public static final blacklist LAST_SWAP_PSS:J = 0x1090000000aL

.field public static final blacklist MAX_ADJ:J = 0x10500000001L

.field public static final blacklist SERVICE_RUN_TIME:J = 0x10b0000000fL

.field public static final blacklist SET_ADJ:J = 0x10500000005L

.field public static final blacklist SET_RAW_ADJ:J = 0x10500000003L

.field public static final blacklist SET_STATE:J = 0x10e00000008L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/am/ProcessOomProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/ProcessOomProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
