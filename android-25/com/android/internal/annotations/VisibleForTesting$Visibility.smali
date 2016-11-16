.class public final enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.super Ljava/lang/Enum;
.source "VisibleForTesting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Visibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/annotations/VisibleForTesting$Visibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/annotations/VisibleForTesting$Visibility;

.field public static final enum PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;

.field public static final enum PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;

.field public static final enum PROTECTED:Lcom/android/internal/annotations/VisibleForTesting$Visibility;


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
    .line 37
    new-instance v0, Lcom/android/internal/annotations/VisibleForTesting$Visibility;

    #@5
    const-string/jumbo v1, "PROTECTED"

    #@8
    invoke-direct {v0, v1, v2}, Lcom/android/internal/annotations/VisibleForTesting$Visibility;-><init>(Ljava/lang/String;I)V

    #@b
    .line 38
    sput-object v0, Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PROTECTED:Lcom/android/internal/annotations/VisibleForTesting$Visibility;

    #@d
    .line 39
    new-instance v0, Lcom/android/internal/annotations/VisibleForTesting$Visibility;

    #@f
    const-string/jumbo v1, "PACKAGE"

    #@12
    invoke-direct {v0, v1, v3}, Lcom/android/internal/annotations/VisibleForTesting$Visibility;-><init>(Ljava/lang/String;I)V

    #@15
    .line 40
    sput-object v0, Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;

    #@17
    .line 41
    new-instance v0, Lcom/android/internal/annotations/VisibleForTesting$Visibility;

    #@19
    const-string/jumbo v1, "PRIVATE"

    #@1c
    invoke-direct {v0, v1, v4}, Lcom/android/internal/annotations/VisibleForTesting$Visibility;-><init>(Ljava/lang/String;I)V

    #@1f
    .line 42
    sput-object v0, Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;

    #@21
    .line 36
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Lcom/android/internal/annotations/VisibleForTesting$Visibility;

    #@24
    sget-object v1, Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PROTECTED:Lcom/android/internal/annotations/VisibleForTesting$Visibility;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Lcom/android/internal/annotations/VisibleForTesting$Visibility;->$VALUES:[Lcom/android/internal/annotations/VisibleForTesting$Visibility;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 36
    const-class v0, Lcom/android/internal/annotations/VisibleForTesting$Visibility;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/annotations/VisibleForTesting$Visibility;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .locals 1

    #@0
    .prologue
    .line 36
    sget-object v0, Lcom/android/internal/annotations/VisibleForTesting$Visibility;->$VALUES:[Lcom/android/internal/annotations/VisibleForTesting$Visibility;

    #@2
    return-object v0
.end method
