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
    .line 1291
    new-instance v0, Ljava/text/MessageFormat$Field;

    #@2
    const-string/jumbo v1, "message argument field"

    #@5
    invoke-direct {v0, v1}, Ljava/text/MessageFormat$Field;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Ljava/text/MessageFormat$Field;->ARGUMENT:Ljava/text/MessageFormat$Field;

    #@a
    .line 1284
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1301
    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    #@3
    .line 1300
    return-void
.end method
