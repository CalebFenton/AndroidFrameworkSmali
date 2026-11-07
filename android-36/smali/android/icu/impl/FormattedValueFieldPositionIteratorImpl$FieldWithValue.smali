.class Landroid/icu/impl/FormattedValueFieldPositionIteratorImpl$FieldWithValue;
.super Ljava/text/Format$Field;
.source "FormattedValueFieldPositionIteratorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/FormattedValueFieldPositionIteratorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldWithValue"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x356e38214ef032b9L


# instance fields
.field public final blacklist field:Ljava/text/Format$Field;

.field public final blacklist value:I


# direct methods
.method public constructor blacklist <init>(Ljava/text/Format$Field;I)V
    .registers 4
    .param p1, "field"    # Ljava/text/Format$Field;
    .param p2, "value"    # I

    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Landroid/icu/impl/FormattedValueFieldPositionIteratorImpl$FieldWithValue;->field:Ljava/text/Format$Field;

    .line 36
    iput p2, p0, Landroid/icu/impl/FormattedValueFieldPositionIteratorImpl$FieldWithValue;->value:I

    .line 37
    return-void
.end method
