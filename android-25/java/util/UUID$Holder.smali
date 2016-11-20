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
.field static final numberGenerator:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 96
    new-instance v0, Ljava/security/SecureRandom;

    #@2
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    #@5
    sput-object v0, Ljava/util/UUID$Holder;->numberGenerator:Ljava/security/SecureRandom;

    #@7
    .line 95
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
