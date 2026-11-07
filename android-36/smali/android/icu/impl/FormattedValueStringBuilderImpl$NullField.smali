.class Landroid/icu/impl/FormattedValueStringBuilderImpl$NullField;
.super Ljava/text/Format$Field;
.source "FormattedValueStringBuilderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/FormattedValueStringBuilderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NullField"
.end annotation


# static fields
.field static final blacklist END:Landroid/icu/impl/FormattedValueStringBuilderImpl$NullField;

.field private static final whitelist serialVersionUID:J = 0x1L


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 153
    new-instance v0, Landroid/icu/impl/FormattedValueStringBuilderImpl$NullField;

    const-string v1, "end"

    invoke-direct {v0, v1}, Landroid/icu/impl/FormattedValueStringBuilderImpl$NullField;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/impl/FormattedValueStringBuilderImpl$NullField;->END:Landroid/icu/impl/FormattedValueStringBuilderImpl$NullField;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 155
    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    .line 156
    return-void
.end method
