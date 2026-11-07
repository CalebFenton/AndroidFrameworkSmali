.class public abstract Ljava/lang/ProcessBuilder$Redirect;
.super Ljava/lang/Object;
.source "ProcessBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ProcessBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Redirect"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ProcessBuilder$Redirect$Type;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field public static final whitelist test-api INHERIT:Ljava/lang/ProcessBuilder$Redirect;

.field public static final whitelist test-api PIPE:Ljava/lang/ProcessBuilder$Redirect;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 459
    const-class v0, Ljava/lang/ProcessBuilder;

    .line 511
    new-instance v0, Ljava/lang/ProcessBuilder$Redirect$1;

    invoke-direct {v0}, Ljava/lang/ProcessBuilder$Redirect$1;-><init>()V

    sput-object v0, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    .line 526
    new-instance v0, Ljava/lang/ProcessBuilder$Redirect$2;

    invoke-direct {v0}, Ljava/lang/ProcessBuilder$Redirect$2;-><init>()V

    sput-object v0, Ljava/lang/ProcessBuilder$Redirect;->INHERIT:Ljava/lang/ProcessBuilder$Redirect;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/ProcessBuilder-IA;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/ProcessBuilder$Redirect;-><init>()V

    return-void
.end method

.method public static whitelist test-api appendTo(Ljava/io/File;)Ljava/lang/ProcessBuilder$Redirect;
    .registers 2
    .param p0, "file"    # Ljava/io/File;

    .line 619
    if-eqz p0, :cond_8

    .line 621
    new-instance v0, Ljava/lang/ProcessBuilder$Redirect$5;

    invoke-direct {v0, p0}, Ljava/lang/ProcessBuilder$Redirect$5;-><init>(Ljava/io/File;)V

    return-object v0

    .line 620
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static whitelist test-api from(Ljava/io/File;)Ljava/lang/ProcessBuilder$Redirect;
    .registers 2
    .param p0, "file"    # Ljava/io/File;

    .line 561
    if-eqz p0, :cond_8

    .line 563
    new-instance v0, Ljava/lang/ProcessBuilder$Redirect$3;

    invoke-direct {v0, p0}, Ljava/lang/ProcessBuilder$Redirect$3;-><init>(Ljava/io/File;)V

    return-object v0

    .line 562
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static whitelist test-api to(Ljava/io/File;)Ljava/lang/ProcessBuilder$Redirect;
    .registers 2
    .param p0, "file"    # Ljava/io/File;

    .line 588
    if-eqz p0, :cond_8

    .line 590
    new-instance v0, Ljava/lang/ProcessBuilder$Redirect$4;

    invoke-direct {v0, p0}, Ljava/lang/ProcessBuilder$Redirect$4;-><init>(Ljava/io/File;)V

    return-object v0

    .line 589
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method greylist-max-o append()Z
    .registers 2

    .line 544
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 639
    if-ne p1, p0, :cond_4

    .line 640
    const/4 v0, 0x1

    return v0

    .line 641
    :cond_4
    instance-of v0, p1, Ljava/lang/ProcessBuilder$Redirect;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 642
    return v1

    .line 643
    :cond_a
    move-object v0, p1

    check-cast v0, Ljava/lang/ProcessBuilder$Redirect;

    .line 644
    .local v0, "r":Ljava/lang/ProcessBuilder$Redirect;
    invoke-virtual {v0}, Ljava/lang/ProcessBuilder$Redirect;->type()Ljava/lang/ProcessBuilder$Redirect$Type;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/ProcessBuilder$Redirect;->type()Ljava/lang/ProcessBuilder$Redirect$Type;

    move-result-object v3

    if-eq v2, v3, :cond_18

    .line 645
    return v1

    .line 646
    :cond_18
    nop

    .line 647
    invoke-virtual {p0}, Ljava/lang/ProcessBuilder$Redirect;->file()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder$Redirect;->file()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api file()Ljava/io/File;
    .registers 2

    .line 537
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 655
    invoke-virtual {p0}, Ljava/lang/ProcessBuilder$Redirect;->file()Ljava/io/File;

    move-result-object v0

    .line 656
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_b

    .line 657
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    return v1

    .line 659
    :cond_b
    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v1

    return v1
.end method

.method public abstract whitelist test-api type()Ljava/lang/ProcessBuilder$Redirect$Type;
.end method
