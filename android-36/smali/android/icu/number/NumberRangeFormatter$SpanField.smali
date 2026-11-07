.class public final Landroid/icu/number/NumberRangeFormatter$SpanField;
.super Landroid/icu/text/UFormat$SpanField;
.source "NumberRangeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/number/NumberRangeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpanField"
.end annotation


# static fields
.field public static final blacklist NUMBER_RANGE_SPAN:Landroid/icu/number/NumberRangeFormatter$SpanField;

.field private static final whitelist serialVersionUID:J = 0x796fa7e37ddf5f19L


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 158
    new-instance v0, Landroid/icu/number/NumberRangeFormatter$SpanField;

    const-string v1, "number-range-span"

    invoke-direct {v0, v1}, Landroid/icu/number/NumberRangeFormatter$SpanField;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/number/NumberRangeFormatter$SpanField;->NUMBER_RANGE_SPAN:Landroid/icu/number/NumberRangeFormatter$SpanField;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 161
    invoke-direct {p0, p1}, Landroid/icu/text/UFormat$SpanField;-><init>(Ljava/lang/String;)V

    .line 162
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

    .line 173
    invoke-virtual {p0}, Landroid/icu/number/NumberRangeFormatter$SpanField;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/number/NumberRangeFormatter$SpanField;->NUMBER_RANGE_SPAN:Landroid/icu/number/NumberRangeFormatter$SpanField;

    invoke-virtual {v1}, Landroid/icu/number/NumberRangeFormatter$SpanField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 174
    sget-object v0, Landroid/icu/number/NumberRangeFormatter$SpanField;->NUMBER_RANGE_SPAN:Landroid/icu/number/NumberRangeFormatter$SpanField;

    return-object v0

    .line 176
    :cond_13
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "An invalid object."

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
