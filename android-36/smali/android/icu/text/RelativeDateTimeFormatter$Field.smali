.class public Landroid/icu/text/RelativeDateTimeFormatter$Field;
.super Ljava/text/Format$Field;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RelativeDateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation


# static fields
.field public static final blacklist LITERAL:Landroid/icu/text/RelativeDateTimeFormatter$Field;

.field public static final blacklist NUMERIC:Landroid/icu/text/RelativeDateTimeFormatter$Field;

.field private static final whitelist serialVersionUID:J = -0x49efbdc2d2fa06e5L


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 413
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$Field;

    const-string v1, "literal"

    invoke-direct {v0, v1}, Landroid/icu/text/RelativeDateTimeFormatter$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Field;->LITERAL:Landroid/icu/text/RelativeDateTimeFormatter$Field;

    .line 418
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$Field;

    const-string v1, "numeric"

    invoke-direct {v0, v1}, Landroid/icu/text/RelativeDateTimeFormatter$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Field;->NUMERIC:Landroid/icu/text/RelativeDateTimeFormatter$Field;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 421
    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    .line 422
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

    .line 433
    invoke-virtual {p0}, Landroid/icu/text/RelativeDateTimeFormatter$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Field;->LITERAL:Landroid/icu/text/RelativeDateTimeFormatter$Field;

    invoke-virtual {v1}, Landroid/icu/text/RelativeDateTimeFormatter$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 434
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Field;->LITERAL:Landroid/icu/text/RelativeDateTimeFormatter$Field;

    return-object v0

    .line 435
    :cond_13
    invoke-virtual {p0}, Landroid/icu/text/RelativeDateTimeFormatter$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Field;->NUMERIC:Landroid/icu/text/RelativeDateTimeFormatter$Field;

    invoke-virtual {v1}, Landroid/icu/text/RelativeDateTimeFormatter$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 436
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Field;->NUMERIC:Landroid/icu/text/RelativeDateTimeFormatter$Field;

    return-object v0

    .line 438
    :cond_26
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "An invalid object."

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
