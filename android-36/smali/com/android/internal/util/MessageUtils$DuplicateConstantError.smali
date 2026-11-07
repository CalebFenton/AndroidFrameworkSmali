.class public Lcom/android/internal/util/MessageUtils$DuplicateConstantError;
.super Ljava/lang/Error;
.source "MessageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/MessageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DuplicateConstantError"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "name1"    # Ljava/lang/String;
    .param p2, "name2"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 40
    nop

    .line 41
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, p2, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 40
    const-string v1, "Duplicate constant value: both %s and %s = %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method
