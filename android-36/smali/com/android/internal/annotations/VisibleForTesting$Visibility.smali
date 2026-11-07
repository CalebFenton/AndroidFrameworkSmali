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
        "Ljava/lang/Enum<",
        "Lcom/android/internal/annotations/VisibleForTesting$Visibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/annotations/VisibleForTesting$Visibility;

.field public static final enum blacklist PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;

.field public static final enum blacklist PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;

.field public static final enum blacklist PROTECTED:Lcom/android/internal/annotations/VisibleForTesting$Visibility;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .registers 3

    .line 36
    sget-object v0, Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PROTECTED:Lcom/android/internal/annotations/VisibleForTesting$Visibility;

    sget-object v1, Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;

    sget-object v2, Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;

    filled-new-array {v0, v1, v2}, [Lcom/android/internal/annotations/VisibleForTesting$Visibility;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 38
    new-instance v0, Lcom/android/internal/annotations/VisibleForTesting$Visibility;

    const-string v1, "PROTECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/annotations/VisibleForTesting$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PROTECTED:Lcom/android/internal/annotations/VisibleForTesting$Visibility;

    .line 40
    new-instance v0, Lcom/android/internal/annotations/VisibleForTesting$Visibility;

    const-string v1, "PACKAGE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/annotations/VisibleForTesting$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;

    .line 42
    new-instance v0, Lcom/android/internal/annotations/VisibleForTesting$Visibility;

    const-string v1, "PRIVATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/annotations/VisibleForTesting$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;

    .line 36
    invoke-static {}, Lcom/android/internal/annotations/VisibleForTesting$Visibility;->$values()[Lcom/android/internal/annotations/VisibleForTesting$Visibility;

    move-result-object v0

    sput-object v0, Lcom/android/internal/annotations/VisibleForTesting$Visibility;->$VALUES:[Lcom/android/internal/annotations/VisibleForTesting$Visibility;

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

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/annotations/VisibleForTesting$Visibility;
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

    .line 36
    const-class v0, Lcom/android/internal/annotations/VisibleForTesting$Visibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/annotations/VisibleForTesting$Visibility;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .registers 1

    .line 36
    sget-object v0, Lcom/android/internal/annotations/VisibleForTesting$Visibility;->$VALUES:[Lcom/android/internal/annotations/VisibleForTesting$Visibility;

    invoke-virtual {v0}, [Lcom/android/internal/annotations/VisibleForTesting$Visibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/annotations/VisibleForTesting$Visibility;

    return-object v0
.end method
