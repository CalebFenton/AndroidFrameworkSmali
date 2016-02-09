.class public final enum Ljava/lang/annotation/RetentionPolicy;
.super Ljava/lang/Enum;
.source "RetentionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/lang/annotation/RetentionPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/lang/annotation/RetentionPolicy;

.field public static final enum CLASS:Ljava/lang/annotation/RetentionPolicy;

.field public static final enum RUNTIME:Ljava/lang/annotation/RetentionPolicy;

.field public static final enum SOURCE:Ljava/lang/annotation/RetentionPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 28
    new-instance v0, Ljava/lang/annotation/RetentionPolicy;

    #@5
    const-string/jumbo v1, "SOURCE"

    #@8
    invoke-direct {v0, v1, v2}, Ljava/lang/annotation/RetentionPolicy;-><init>(Ljava/lang/String;I)V

    #@b
    .line 31
    sput-object v0, Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;

    #@d
    .line 32
    new-instance v0, Ljava/lang/annotation/RetentionPolicy;

    #@f
    const-string/jumbo v1, "CLASS"

    #@12
    invoke-direct {v0, v1, v3}, Ljava/lang/annotation/RetentionPolicy;-><init>(Ljava/lang/String;I)V

    #@15
    .line 36
    sput-object v0, Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;

    #@17
    .line 37
    new-instance v0, Ljava/lang/annotation/RetentionPolicy;

    #@19
    const-string/jumbo v1, "RUNTIME"

    #@1c
    invoke-direct {v0, v1, v4}, Ljava/lang/annotation/RetentionPolicy;-><init>(Ljava/lang/String;I)V

    #@1f
    .line 41
    sput-object v0, Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;

    #@21
    .line 27
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Ljava/lang/annotation/RetentionPolicy;

    #@24
    sget-object v1, Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Ljava/lang/annotation/RetentionPolicy;->$VALUES:[Ljava/lang/annotation/RetentionPolicy;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/annotation/RetentionPolicy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 27
    const-class v0, Ljava/lang/annotation/RetentionPolicy;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/annotation/RetentionPolicy;

    #@8
    return-object v0
.end method

.method public static values()[Ljava/lang/annotation/RetentionPolicy;
    .locals 1

    #@0
    .prologue
    .line 27
    sget-object v0, Ljava/lang/annotation/RetentionPolicy;->$VALUES:[Ljava/lang/annotation/RetentionPolicy;

    #@2
    return-object v0
.end method
