.class public Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;
.super Ljava/lang/Object;
.source "FormattedValueStringBuilderImpl.java"

# interfaces
.implements Landroid/icu/impl/FormattedStringBuilder$FieldWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/FormattedValueStringBuilderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpanFieldPlaceholder"
.end annotation


# instance fields
.field public blacklist length:I

.field public blacklist normalField:Ljava/text/Format$Field;

.field public blacklist spanField:Landroid/icu/text/UFormat$SpanField;

.field public blacklist start:I

.field public blacklist value:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist unwrap()Ljava/text/Format$Field;
    .registers 2

    .line 44
    iget-object v0, p0, Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->normalField:Ljava/text/Format$Field;

    return-object v0
.end method
