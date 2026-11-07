.class public final Ljava/nio/ByteOrder;
.super Ljava/lang/Object;
.source "ByteOrder.java"


# static fields
.field public static final whitelist test-api BIG_ENDIAN:Ljava/nio/ByteOrder;

.field public static final whitelist test-api LITTLE_ENDIAN:Ljava/nio/ByteOrder;

.field private static final blacklist NATIVE_ORDER:Ljava/nio/ByteOrder;


# instance fields
.field private greylist-max-o name:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 48
    new-instance v0, Ljava/nio/ByteOrder;

    const-string v1, "BIG_ENDIAN"

    invoke-direct {v0, v1}, Ljava/nio/ByteOrder;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 56
    new-instance v0, Ljava/nio/ByteOrder;

    const-string v1, "LITTLE_ENDIAN"

    invoke-direct {v0, v1}, Ljava/nio/ByteOrder;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 61
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Ljava/nio/ByteOrder;->NATIVE_ORDER:Ljava/nio/ByteOrder;

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Ljava/nio/ByteOrder;->name:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static whitelist test-api nativeOrder()Ljava/nio/ByteOrder;
    .registers 1

    .line 79
    sget-object v0, Ljava/nio/ByteOrder;->NATIVE_ORDER:Ljava/nio/ByteOrder;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Ljava/nio/ByteOrder;->name:Ljava/lang/String;

    return-object v0
.end method
