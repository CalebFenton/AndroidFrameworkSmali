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
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "name1"    # Ljava/lang/String;
    .param p2, "name2"    # Ljava/lang/String;
    .param p3, "value"    # I

    #@0
    .prologue
    .line 38
    const-string/jumbo v0, "Duplicate constant value: both %s and %s = %d"

    #@3
    const/4 v1, 0x3

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    .line 39
    const/4 v2, 0x0

    #@7
    aput-object p1, v1, v2

    #@9
    const/4 v2, 0x1

    #@a
    aput-object p2, v1, v2

    #@c
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object v2

    #@10
    const/4 v3, 0x2

    #@11
    aput-object v2, v1, v3

    #@13
    .line 38
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@1a
    .line 37
    return-void
.end method
