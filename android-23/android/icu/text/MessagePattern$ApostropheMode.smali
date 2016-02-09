.class public final enum Landroid/icu/text/MessagePattern$ApostropheMode;
.super Ljava/lang/Enum;
.source "MessagePattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessagePattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApostropheMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/MessagePattern$ApostropheMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/MessagePattern$ApostropheMode;

.field public static final enum DOUBLE_OPTIONAL:Landroid/icu/text/MessagePattern$ApostropheMode;

.field public static final enum DOUBLE_REQUIRED:Landroid/icu/text/MessagePattern$ApostropheMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 116
    new-instance v0, Landroid/icu/text/MessagePattern$ApostropheMode;

    #@4
    const-string/jumbo v1, "DOUBLE_OPTIONAL"

    #@7
    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$ApostropheMode;-><init>(Ljava/lang/String;I)V

    #@a
    .line 127
    sput-object v0, Landroid/icu/text/MessagePattern$ApostropheMode;->DOUBLE_OPTIONAL:Landroid/icu/text/MessagePattern$ApostropheMode;

    #@c
    .line 128
    new-instance v0, Landroid/icu/text/MessagePattern$ApostropheMode;

    #@e
    const-string/jumbo v1, "DOUBLE_REQUIRED"

    #@11
    invoke-direct {v0, v1, v3}, Landroid/icu/text/MessagePattern$ApostropheMode;-><init>(Ljava/lang/String;I)V

    #@14
    .line 136
    sput-object v0, Landroid/icu/text/MessagePattern$ApostropheMode;->DOUBLE_REQUIRED:Landroid/icu/text/MessagePattern$ApostropheMode;

    #@16
    .line 115
    const/4 v0, 0x2

    #@17
    new-array v0, v0, [Landroid/icu/text/MessagePattern$ApostropheMode;

    #@19
    sget-object v1, Landroid/icu/text/MessagePattern$ApostropheMode;->DOUBLE_OPTIONAL:Landroid/icu/text/MessagePattern$ApostropheMode;

    #@1b
    aput-object v1, v0, v2

    #@1d
    sget-object v1, Landroid/icu/text/MessagePattern$ApostropheMode;->DOUBLE_REQUIRED:Landroid/icu/text/MessagePattern$ApostropheMode;

    #@1f
    aput-object v1, v0, v3

    #@21
    sput-object v0, Landroid/icu/text/MessagePattern$ApostropheMode;->$VALUES:[Landroid/icu/text/MessagePattern$ApostropheMode;

    #@23
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/MessagePattern$ApostropheMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 115
    const-class v0, Landroid/icu/text/MessagePattern$ApostropheMode;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/MessagePattern$ApostropheMode;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/text/MessagePattern$ApostropheMode;
    .locals 1

    #@0
    .prologue
    .line 115
    sget-object v0, Landroid/icu/text/MessagePattern$ApostropheMode;->$VALUES:[Landroid/icu/text/MessagePattern$ApostropheMode;

    #@2
    return-object v0
.end method
