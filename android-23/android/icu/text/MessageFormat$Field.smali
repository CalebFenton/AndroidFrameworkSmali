.class public Landroid/icu/text/MessageFormat$Field;
.super Ljava/text/Format$Field;
.source "MessageFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessageFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation


# static fields
.field public static final ARGUMENT:Landroid/icu/text/MessageFormat$Field;

.field private static final serialVersionUID:J = 0x683a3b3b54a02d5dL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 1533
    new-instance v0, Landroid/icu/text/MessageFormat$Field;

    #@2
    const-string/jumbo v1, "message argument field"

    #@5
    invoke-direct {v0, v1}, Landroid/icu/text/MessageFormat$Field;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Landroid/icu/text/MessageFormat$Field;->ARGUMENT:Landroid/icu/text/MessageFormat$Field;

    #@a
    .line 1489
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1501
    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    #@3
    .line 1500
    return-void
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    #@0
    .prologue
    .line 1513
    invoke-virtual {p0}, Landroid/icu/text/MessageFormat$Field;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    const-class v1, Landroid/icu/text/MessageFormat$Field;

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 1514
    new-instance v0, Ljava/io/InvalidObjectException;

    #@a
    .line 1515
    const-string/jumbo v1, "A subclass of MessageFormat.Field must implement readResolve."

    #@d
    .line 1514
    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 1517
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/MessageFormat$Field;->getName()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    sget-object v1, Landroid/icu/text/MessageFormat$Field;->ARGUMENT:Landroid/icu/text/MessageFormat$Field;

    #@17
    invoke-virtual {v1}, Landroid/icu/text/MessageFormat$Field;->getName()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_1

    #@21
    .line 1518
    sget-object v0, Landroid/icu/text/MessageFormat$Field;->ARGUMENT:Landroid/icu/text/MessageFormat$Field;

    #@23
    return-object v0

    #@24
    .line 1520
    :cond_1
    new-instance v0, Ljava/io/InvalidObjectException;

    #@26
    const-string/jumbo v1, "Unknown attribute name."

    #@29
    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0
.end method
