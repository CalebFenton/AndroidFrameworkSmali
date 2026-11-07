.class Ljava/util/UUID$Holder;
.super Ljava/lang/Object;
.source "UUID.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/UUID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static final greylist-max-o numberGenerator:Ljava/security/SecureRandom;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 107
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljava/util/UUID$Holder;->numberGenerator:Ljava/security/SecureRandom;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
