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
        Ljava/lang/ProcessBuilder$Redirect$1;,
        Ljava/lang/ProcessBuilder$Redirect$2;,
        Ljava/lang/ProcessBuilder$Redirect$Type;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final INHERIT:Ljava/lang/ProcessBuilder$Redirect;

.field public static final PIPE:Ljava/lang/ProcessBuilder$Redirect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Ljava/lang/ProcessBuilder$Redirect;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Ljava/lang/ProcessBuilder$Redirect;->-assertionsDisabled:Z

    #@b
    .line 448
    new-instance v0, Ljava/lang/ProcessBuilder$Redirect$1;

    #@d
    invoke-direct {v0}, Ljava/lang/ProcessBuilder$Redirect$1;-><init>()V

    #@10
    sput-object v0, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    #@12
    .line 463
    new-instance v0, Ljava/lang/ProcessBuilder$Redirect$2;

    #@14
    invoke-direct {v0}, Ljava/lang/ProcessBuilder$Redirect$2;-><init>()V

    #@17
    sput-object v0, Ljava/lang/ProcessBuilder$Redirect;->INHERIT:Ljava/lang/ProcessBuilder$Redirect;

    #@19
    .line 396
    return-void

    #@1a
    :cond_0
    const/4 v0, 0x1

    #@1b
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/ProcessBuilder$Redirect;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/ProcessBuilder$Redirect;-><init>()V

    #@3
    return-void
.end method

.method public static appendTo(Ljava/io/File;)Ljava/lang/ProcessBuilder$Redirect;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    #@0
    .prologue
    .line 553
    if-nez p0, :cond_0

    #@2
    .line 554
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 555
    :cond_0
    new-instance v0, Ljava/lang/ProcessBuilder$Redirect$5;

    #@a
    invoke-direct {v0, p0}, Ljava/lang/ProcessBuilder$Redirect$5;-><init>(Ljava/io/File;)V

    #@d
    return-object v0
.end method

.method public static from(Ljava/io/File;)Ljava/lang/ProcessBuilder$Redirect;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    #@0
    .prologue
    .line 497
    if-nez p0, :cond_0

    #@2
    .line 498
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 499
    :cond_0
    new-instance v0, Ljava/lang/ProcessBuilder$Redirect$3;

    #@a
    invoke-direct {v0, p0}, Ljava/lang/ProcessBuilder$Redirect$3;-><init>(Ljava/io/File;)V

    #@d
    return-object v0
.end method

.method public static to(Ljava/io/File;)Ljava/lang/ProcessBuilder$Redirect;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    #@0
    .prologue
    .line 523
    if-nez p0, :cond_0

    #@2
    .line 524
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 525
    :cond_0
    new-instance v0, Ljava/lang/ProcessBuilder$Redirect$4;

    #@a
    invoke-direct {v0, p0}, Ljava/lang/ProcessBuilder$Redirect$4;-><init>(Ljava/io/File;)V

    #@d
    return-object v0
.end method


# virtual methods
.method append()Z
    .locals 1

    #@0
    .prologue
    .line 481
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 573
    if-ne p1, p0, :cond_0

    #@4
    .line 574
    return v1

    #@5
    .line 575
    :cond_0
    instance-of v3, p1, Ljava/lang/ProcessBuilder$Redirect;

    #@7
    if-nez v3, :cond_1

    #@9
    .line 576
    return v2

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 577
    nop

    #@c
    nop

    #@d
    .line 578
    .local v0, "r":Ljava/lang/ProcessBuilder$Redirect;
    invoke-virtual {v0}, Ljava/lang/ProcessBuilder$Redirect;->type()Ljava/lang/ProcessBuilder$Redirect$Type;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {p0}, Ljava/lang/ProcessBuilder$Redirect;->type()Ljava/lang/ProcessBuilder$Redirect$Type;

    #@14
    move-result-object v4

    #@15
    if-eq v3, v4, :cond_2

    #@17
    .line 579
    return v2

    #@18
    .line 580
    :cond_2
    sget-boolean v3, Ljava/lang/ProcessBuilder$Redirect;->-assertionsDisabled:Z

    #@1a
    if-nez v3, :cond_4

    #@1c
    invoke-virtual {p0}, Ljava/lang/ProcessBuilder$Redirect;->file()Ljava/io/File;

    #@1f
    move-result-object v3

    #@20
    if-eqz v3, :cond_3

    #@22
    :goto_0
    if-nez v1, :cond_4

    #@24
    new-instance v1, Ljava/lang/AssertionError;

    #@26
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@29
    throw v1

    #@2a
    :cond_3
    move v1, v2

    #@2b
    goto :goto_0

    #@2c
    .line 581
    :cond_4
    invoke-virtual {p0}, Ljava/lang/ProcessBuilder$Redirect;->file()Ljava/io/File;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v0}, Ljava/lang/ProcessBuilder$Redirect;->file()Ljava/io/File;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v1

    #@38
    return v1
.end method

.method public file()Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 474
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 589
    invoke-virtual {p0}, Ljava/lang/ProcessBuilder$Redirect;->file()Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    .line 590
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_0

    #@6
    .line 591
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 593
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    #@e
    move-result v1

    #@f
    return v1
.end method

.method public abstract type()Ljava/lang/ProcessBuilder$Redirect$Type;
.end method
