.class public final Landroid/icu/text/ListFormatter$Field;
.super Ljava/text/Format$Field;
.source "ListFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/ListFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Field"
.end annotation


# static fields
.field public static blacklist ELEMENT:Landroid/icu/text/ListFormatter$Field; = null

.field public static blacklist LITERAL:Landroid/icu/text/ListFormatter$Field; = null

.field private static final whitelist serialVersionUID:J = -0x7002783911c9edddL


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 140
    new-instance v0, Landroid/icu/text/ListFormatter$Field;

    const-string v1, "literal"

    invoke-direct {v0, v1}, Landroid/icu/text/ListFormatter$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/ListFormatter$Field;->LITERAL:Landroid/icu/text/ListFormatter$Field;

    .line 145
    new-instance v0, Landroid/icu/text/ListFormatter$Field;

    const-string v1, "element"

    invoke-direct {v0, v1}, Landroid/icu/text/ListFormatter$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/ListFormatter$Field;->ELEMENT:Landroid/icu/text/ListFormatter$Field;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 148
    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    .line 149
    return-void
.end method


# virtual methods
.method protected whitelist test-api readResolve()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 160
    invoke-virtual {p0}, Landroid/icu/text/ListFormatter$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/ListFormatter$Field;->LITERAL:Landroid/icu/text/ListFormatter$Field;

    invoke-virtual {v1}, Landroid/icu/text/ListFormatter$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 161
    sget-object v0, Landroid/icu/text/ListFormatter$Field;->LITERAL:Landroid/icu/text/ListFormatter$Field;

    return-object v0

    .line 162
    :cond_13
    invoke-virtual {p0}, Landroid/icu/text/ListFormatter$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/ListFormatter$Field;->ELEMENT:Landroid/icu/text/ListFormatter$Field;

    invoke-virtual {v1}, Landroid/icu/text/ListFormatter$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 163
    sget-object v0, Landroid/icu/text/ListFormatter$Field;->ELEMENT:Landroid/icu/text/ListFormatter$Field;

    return-object v0

    .line 165
    :cond_26
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "An invalid object."

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
