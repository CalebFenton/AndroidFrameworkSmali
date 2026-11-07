.class public final enum Lcom/android/org/conscrypt/metrics/Protocol;
.super Ljava/lang/Enum;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/org/conscrypt/metrics/Protocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/org/conscrypt/metrics/Protocol;

.field public static final enum blacklist SSLv3:Lcom/android/org/conscrypt/metrics/Protocol;

.field public static final enum blacklist TLS_PROTO_FAILED:Lcom/android/org/conscrypt/metrics/Protocol;

.field public static final enum blacklist TLSv1:Lcom/android/org/conscrypt/metrics/Protocol;

.field public static final enum blacklist TLSv1_1:Lcom/android/org/conscrypt/metrics/Protocol;

.field public static final enum blacklist TLSv1_2:Lcom/android/org/conscrypt/metrics/Protocol;

.field public static final enum blacklist TLSv1_3:Lcom/android/org/conscrypt/metrics/Protocol;

.field public static final enum blacklist UNKNOWN_PROTO:Lcom/android/org/conscrypt/metrics/Protocol;


# instance fields
.field final blacklist id:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/org/conscrypt/metrics/Protocol;
    .registers 7

    .line 27
    sget-object v0, Lcom/android/org/conscrypt/metrics/Protocol;->UNKNOWN_PROTO:Lcom/android/org/conscrypt/metrics/Protocol;

    sget-object v1, Lcom/android/org/conscrypt/metrics/Protocol;->SSLv3:Lcom/android/org/conscrypt/metrics/Protocol;

    sget-object v2, Lcom/android/org/conscrypt/metrics/Protocol;->TLSv1:Lcom/android/org/conscrypt/metrics/Protocol;

    sget-object v3, Lcom/android/org/conscrypt/metrics/Protocol;->TLSv1_1:Lcom/android/org/conscrypt/metrics/Protocol;

    sget-object v4, Lcom/android/org/conscrypt/metrics/Protocol;->TLSv1_2:Lcom/android/org/conscrypt/metrics/Protocol;

    sget-object v5, Lcom/android/org/conscrypt/metrics/Protocol;->TLSv1_3:Lcom/android/org/conscrypt/metrics/Protocol;

    sget-object v6, Lcom/android/org/conscrypt/metrics/Protocol;->TLS_PROTO_FAILED:Lcom/android/org/conscrypt/metrics/Protocol;

    filled-new-array/range {v0 .. v6}, [Lcom/android/org/conscrypt/metrics/Protocol;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 29
    new-instance v0, Lcom/android/org/conscrypt/metrics/Protocol;

    const-string v1, "UNKNOWN_PROTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/org/conscrypt/metrics/Protocol;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/Protocol;->UNKNOWN_PROTO:Lcom/android/org/conscrypt/metrics/Protocol;

    .line 30
    new-instance v0, Lcom/android/org/conscrypt/metrics/Protocol;

    const-string v1, "SSLv3"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/android/org/conscrypt/metrics/Protocol;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/Protocol;->SSLv3:Lcom/android/org/conscrypt/metrics/Protocol;

    .line 31
    new-instance v0, Lcom/android/org/conscrypt/metrics/Protocol;

    const-string v1, "TLSv1"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/android/org/conscrypt/metrics/Protocol;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/Protocol;->TLSv1:Lcom/android/org/conscrypt/metrics/Protocol;

    .line 32
    new-instance v0, Lcom/android/org/conscrypt/metrics/Protocol;

    const-string v1, "TLSv1_1"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/android/org/conscrypt/metrics/Protocol;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/Protocol;->TLSv1_1:Lcom/android/org/conscrypt/metrics/Protocol;

    .line 33
    new-instance v0, Lcom/android/org/conscrypt/metrics/Protocol;

    const-string v1, "TLSv1_2"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/android/org/conscrypt/metrics/Protocol;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/Protocol;->TLSv1_2:Lcom/android/org/conscrypt/metrics/Protocol;

    .line 34
    new-instance v0, Lcom/android/org/conscrypt/metrics/Protocol;

    const-string v1, "TLSv1_3"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/android/org/conscrypt/metrics/Protocol;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/Protocol;->TLSv1_3:Lcom/android/org/conscrypt/metrics/Protocol;

    .line 35
    new-instance v0, Lcom/android/org/conscrypt/metrics/Protocol;

    const/4 v1, 0x6

    const v2, 0xffff

    const-string v3, "TLS_PROTO_FAILED"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/conscrypt/metrics/Protocol;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/Protocol;->TLS_PROTO_FAILED:Lcom/android/org/conscrypt/metrics/Protocol;

    .line 27
    invoke-static {}, Lcom/android/org/conscrypt/metrics/Protocol;->$values()[Lcom/android/org/conscrypt/metrics/Protocol;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/metrics/Protocol;->$VALUES:[Lcom/android/org/conscrypt/metrics/Protocol;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput p3, p0, Lcom/android/org/conscrypt/metrics/Protocol;->id:I

    .line 65
    return-void
.end method

.method public static blacklist forName(Ljava/lang/String;)Lcom/android/org/conscrypt/metrics/Protocol;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_5e

    :cond_7
    goto :goto_44

    :sswitch_8
    const-string v0, "TLSv1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_45

    :sswitch_12
    const-string v0, "SSLv3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_45

    :sswitch_1c
    const-string v0, "TLSv1.3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_45

    :sswitch_26
    const-string v0, "TLSv1.2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_45

    :sswitch_30
    const-string v0, "TLSv1.1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_45

    :sswitch_3a
    const-string v0, "TLS_PROTO_FAILED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_45

    :goto_44
    const/4 v0, -0x1

    :goto_45
    packed-switch v0, :pswitch_data_78

    .line 59
    sget-object v0, Lcom/android/org/conscrypt/metrics/Protocol;->UNKNOWN_PROTO:Lcom/android/org/conscrypt/metrics/Protocol;

    return-object v0

    .line 57
    :pswitch_4b
    sget-object v0, Lcom/android/org/conscrypt/metrics/Protocol;->TLS_PROTO_FAILED:Lcom/android/org/conscrypt/metrics/Protocol;

    return-object v0

    .line 55
    :pswitch_4e
    sget-object v0, Lcom/android/org/conscrypt/metrics/Protocol;->TLSv1_3:Lcom/android/org/conscrypt/metrics/Protocol;

    return-object v0

    .line 53
    :pswitch_51
    sget-object v0, Lcom/android/org/conscrypt/metrics/Protocol;->TLSv1_2:Lcom/android/org/conscrypt/metrics/Protocol;

    return-object v0

    .line 51
    :pswitch_54
    sget-object v0, Lcom/android/org/conscrypt/metrics/Protocol;->TLSv1_1:Lcom/android/org/conscrypt/metrics/Protocol;

    return-object v0

    .line 49
    :pswitch_57
    sget-object v0, Lcom/android/org/conscrypt/metrics/Protocol;->TLSv1:Lcom/android/org/conscrypt/metrics/Protocol;

    return-object v0

    .line 47
    :pswitch_5a
    sget-object v0, Lcom/android/org/conscrypt/metrics/Protocol;->SSLv3:Lcom/android/org/conscrypt/metrics/Protocol;

    return-object v0

    nop

    :sswitch_data_5e
    .sparse-switch
        -0x447e3c88 -> :sswitch_3a
        -0x1dfc3f27 -> :sswitch_30
        -0x1dfc3f26 -> :sswitch_26
        -0x1dfc3f25 -> :sswitch_1c
        0x4b88569 -> :sswitch_12
        0x4c38896 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
    .end packed-switch
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/metrics/Protocol;
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

    .line 27
    const-class v0, Lcom/android/org/conscrypt/metrics/Protocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/metrics/Protocol;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/org/conscrypt/metrics/Protocol;
    .registers 1

    .line 27
    sget-object v0, Lcom/android/org/conscrypt/metrics/Protocol;->$VALUES:[Lcom/android/org/conscrypt/metrics/Protocol;

    invoke-virtual {v0}, [Lcom/android/org/conscrypt/metrics/Protocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/org/conscrypt/metrics/Protocol;

    return-object v0
.end method


# virtual methods
.method public blacklist getId()I
    .registers 2

    .line 41
    iget v0, p0, Lcom/android/org/conscrypt/metrics/Protocol;->id:I

    return v0
.end method
