.class public Ljava/text/MessageFormat$Field;
.super Ljava/text/Format$Field;
.source "MessageFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/MessageFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation


# static fields
.field public static final ARGUMENT:Ljava/text/MessageFormat$Field;

.field private static final serialVersionUID:J = 0x6da23d2c7b46bfaaL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 1167
    new-instance v0, Ljava/text/MessageFormat$Field;

    #@2
    const-string/jumbo v1, "message argument field"

    #@5
    invoke-direct {v0, v1}, Ljava/text/MessageFormat$Field;-><init>(Ljava/lang/String;)V

    #@8
    .line 1166
    sput-object v0, Ljava/text/MessageFormat$Field;->ARGUMENT:Ljava/text/MessageFormat$Field;

    #@a
    .line 1126
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1137
    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    #@3
    .line 1136
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
    .line 1148
    invoke-virtual {p0}, Ljava/text/MessageFormat$Field;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    const-class v1, Ljava/text/MessageFormat$Field;

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 1149
    new-instance v0, Ljava/io/InvalidObjectException;

    #@a
    const-string/jumbo v1, "subclass didn\'t correctly implement readResolve"

    #@d
    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 1152
    :cond_0
    sget-object v0, Ljava/text/MessageFormat$Field;->ARGUMENT:Ljava/text/MessageFormat$Field;

    #@13
    return-object v0
.end method
