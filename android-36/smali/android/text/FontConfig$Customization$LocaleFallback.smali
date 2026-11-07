.class public Landroid/text/FontConfig$Customization$LocaleFallback;
.super Ljava/lang/Object;
.source "FontConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/FontConfig$Customization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocaleFallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/FontConfig$Customization$LocaleFallback$Operation;
    }
.end annotation


# static fields
.field public static final blacklist OPERATION_APPEND:I = 0x1

.field public static final blacklist OPERATION_PREPEND:I = 0x0

.field public static final blacklist OPERATION_REPLACE:I = 0x2


# instance fields
.field private final blacklist mFamily:Landroid/text/FontConfig$FontFamily;

.field private final blacklist mLocale:Ljava/util/Locale;

.field private final blacklist mOperation:I

.field private final blacklist mScript:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/util/Locale;ILandroid/text/FontConfig$FontFamily;)V
    .registers 5
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "operation"    # I
    .param p3, "family"    # Landroid/text/FontConfig$FontFamily;

    .line 899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 900
    iput-object p1, p0, Landroid/text/FontConfig$Customization$LocaleFallback;->mLocale:Ljava/util/Locale;

    .line 901
    iput p2, p0, Landroid/text/FontConfig$Customization$LocaleFallback;->mOperation:I

    .line 902
    iput-object p3, p0, Landroid/text/FontConfig$Customization$LocaleFallback;->mFamily:Landroid/text/FontConfig$FontFamily;

    .line 903
    invoke-static {p1}, Landroid/text/FontConfig;->resolveScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/FontConfig$Customization$LocaleFallback;->mScript:Ljava/lang/String;

    .line 904
    return-void
.end method


# virtual methods
.method public blacklist getFamily()Landroid/text/FontConfig$FontFamily;
    .registers 2

    .line 944
    iget-object v0, p0, Landroid/text/FontConfig$Customization$LocaleFallback;->mFamily:Landroid/text/FontConfig$FontFamily;

    return-object v0
.end method

.method public blacklist getLocale()Ljava/util/Locale;
    .registers 2

    .line 911
    iget-object v0, p0, Landroid/text/FontConfig$Customization$LocaleFallback;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public blacklist getOperation()I
    .registers 2

    .line 935
    iget v0, p0, Landroid/text/FontConfig$Customization$LocaleFallback;->mOperation:I

    return v0
.end method

.method public blacklist getScript()Ljava/lang/String;
    .registers 2

    .line 952
    iget-object v0, p0, Landroid/text/FontConfig$Customization$LocaleFallback;->mScript:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocaleFallback{mLocale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/FontConfig$Customization$LocaleFallback;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOperation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/text/FontConfig$Customization$LocaleFallback;->mOperation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFamily="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/FontConfig$Customization$LocaleFallback;->mFamily:Landroid/text/FontConfig$FontFamily;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
