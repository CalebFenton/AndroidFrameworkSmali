.class public Lcom/android/internal/telephony/HalVersion;
.super Ljava/lang/Object;
.source "HalVersion.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/internal/telephony/HalVersion;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist UNKNOWN:Lcom/android/internal/telephony/HalVersion;

.field public static final blacklist UNSUPPORTED:Lcom/android/internal/telephony/HalVersion;


# instance fields
.field public final blacklist major:I

.field public final blacklist minor:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/HalVersion;->UNSUPPORTED:Lcom/android/internal/telephony/HalVersion;

    .line 32
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/HalVersion;->UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/android/internal/telephony/HalVersion;->major:I

    .line 40
    iput p2, p0, Lcom/android/internal/telephony/HalVersion;->minor:I

    return-void
.end method


# virtual methods
.method public blacklist compareTo(Lcom/android/internal/telephony/HalVersion;)I
    .registers 6

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 48
    :cond_4
    iget v1, p0, Lcom/android/internal/telephony/HalVersion;->major:I

    iget v2, p1, Lcom/android/internal/telephony/HalVersion;->major:I

    if-le v1, v2, :cond_b

    return v0

    :cond_b
    const/4 v3, -0x1

    if-ge v1, v2, :cond_f

    return v3

    .line 52
    :cond_f
    iget p0, p0, Lcom/android/internal/telephony/HalVersion;->minor:I

    iget p1, p1, Lcom/android/internal/telephony/HalVersion;->minor:I

    if-le p0, p1, :cond_16

    return v0

    :cond_16
    if-ge p0, p1, :cond_19

    return v3

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 26
    check-cast p1, Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HalVersion;->compareTo(Lcom/android/internal/telephony/HalVersion;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 67
    instance-of v0, p1, Lcom/android/internal/telephony/HalVersion;

    if-eqz v0, :cond_10

    if-eq p1, p0, :cond_e

    check-cast p1, Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HalVersion;->compareTo(Lcom/android/internal/telephony/HalVersion;)I

    move-result p0

    if-nez p0, :cond_10

    :cond_e
    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist greater(Lcom/android/internal/telephony/HalVersion;)Z
    .registers 2

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HalVersion;->compareTo(Lcom/android/internal/telephony/HalVersion;)I

    move-result p0

    if-lez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z
    .registers 3

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HalVersion;->greater(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HalVersion;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 62
    iget v0, p0, Lcom/android/internal/telephony/HalVersion;->major:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/telephony/HalVersion;->minor:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist less(Lcom/android/internal/telephony/HalVersion;)Z
    .registers 2

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HalVersion;->compareTo(Lcom/android/internal/telephony/HalVersion;)I

    move-result p0

    if-gez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist lessOrEqual(Lcom/android/internal/telephony/HalVersion;)Z
    .registers 3

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HalVersion;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/internal/telephony/HalVersion;->major:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/HalVersion;->minor:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
