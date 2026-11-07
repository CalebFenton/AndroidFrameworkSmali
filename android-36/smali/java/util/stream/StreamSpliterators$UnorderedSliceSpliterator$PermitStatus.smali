.class final enum Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;
.super Ljava/lang/Enum;
.source "StreamSpliterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PermitStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

.field public static final enum blacklist MAYBE_MORE:Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

.field public static final enum blacklist NO_MORE:Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

.field public static final enum blacklist UNLIMITED:Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;


# direct methods
.method private static synthetic blacklist $values()[Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;
    .registers 3

    .line 969
    sget-object v0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->NO_MORE:Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    sget-object v1, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->MAYBE_MORE:Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    sget-object v2, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->UNLIMITED:Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    filled-new-array {v0, v1, v2}, [Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 969
    new-instance v0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    const-string v1, "NO_MORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->NO_MORE:Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    new-instance v0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    const-string v1, "MAYBE_MORE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->MAYBE_MORE:Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    new-instance v0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    const-string v1, "UNLIMITED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->UNLIMITED:Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    invoke-static {}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->$values()[Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    move-result-object v0

    sput-object v0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->$VALUES:[Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 969
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 969
    const-class v0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    return-object v0
.end method

.method public static blacklist values()[Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;
    .registers 1

    .line 969
    sget-object v0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->$VALUES:[Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    invoke-virtual {v0}, [Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    return-object v0
.end method
