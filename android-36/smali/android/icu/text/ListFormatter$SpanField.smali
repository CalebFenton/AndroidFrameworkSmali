.class public final Landroid/icu/text/ListFormatter$SpanField;
.super Landroid/icu/text/UFormat$SpanField;
.source "ListFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/ListFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpanField"
.end annotation


# static fields
.field public static final blacklist LIST_SPAN:Landroid/icu/text/ListFormatter$SpanField;

.field private static final whitelist serialVersionUID:J = 0x3174409532ed7c63L


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 108
    new-instance v0, Landroid/icu/text/ListFormatter$SpanField;

    const-string v1, "list-span"

    invoke-direct {v0, v1}, Landroid/icu/text/ListFormatter$SpanField;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/ListFormatter$SpanField;->LIST_SPAN:Landroid/icu/text/ListFormatter$SpanField;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 111
    invoke-direct {p0, p1}, Landroid/icu/text/UFormat$SpanField;-><init>(Ljava/lang/String;)V

    .line 112
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

    .line 123
    invoke-virtual {p0}, Landroid/icu/text/ListFormatter$SpanField;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/ListFormatter$SpanField;->LIST_SPAN:Landroid/icu/text/ListFormatter$SpanField;

    invoke-virtual {v1}, Landroid/icu/text/ListFormatter$SpanField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 124
    sget-object v0, Landroid/icu/text/ListFormatter$SpanField;->LIST_SPAN:Landroid/icu/text/ListFormatter$SpanField;

    return-object v0

    .line 126
    :cond_13
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "An invalid object."

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
