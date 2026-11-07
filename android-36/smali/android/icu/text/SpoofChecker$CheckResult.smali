.class public Landroid/icu/text/SpoofChecker$CheckResult;
.super Ljava/lang/Object;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SpoofChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckResult"
.end annotation


# instance fields
.field public greylist-max-o checks:I

.field public greylist-max-o numerics:Landroid/icu/text/UnicodeSet;

.field public greylist-max-o position:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public greylist-max-o restrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 1180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1181
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/SpoofChecker$CheckResult;->checks:I

    .line 1182
    iput v0, p0, Landroid/icu/text/SpoofChecker$CheckResult;->position:I

    .line 1183
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 1190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1191
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "checks:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1192
    iget v1, p0, Landroid/icu/text/SpoofChecker$CheckResult;->checks:I

    if-nez v1, :cond_14

    .line 1193
    const-string v1, " none"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    .line 1194
    :cond_14
    iget v1, p0, Landroid/icu/text/SpoofChecker$CheckResult;->checks:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1f

    .line 1195
    const-string v1, " all"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    .line 1197
    :cond_1f
    iget v1, p0, Landroid/icu/text/SpoofChecker$CheckResult;->checks:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2a

    .line 1198
    const-string v1, " SINGLE_SCRIPT_CONFUSABLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1200
    :cond_2a
    iget v1, p0, Landroid/icu/text/SpoofChecker$CheckResult;->checks:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_35

    .line 1201
    const-string v1, " MIXED_SCRIPT_CONFUSABLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    :cond_35
    iget v1, p0, Landroid/icu/text/SpoofChecker$CheckResult;->checks:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_40

    .line 1204
    const-string v1, " WHOLE_SCRIPT_CONFUSABLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1206
    :cond_40
    iget v1, p0, Landroid/icu/text/SpoofChecker$CheckResult;->checks:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4b

    .line 1207
    const-string v1, " ANY_CASE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1209
    :cond_4b
    iget v1, p0, Landroid/icu/text/SpoofChecker$CheckResult;->checks:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_56

    .line 1210
    const-string v1, " RESTRICTION_LEVEL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1212
    :cond_56
    iget v1, p0, Landroid/icu/text/SpoofChecker$CheckResult;->checks:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_61

    .line 1213
    const-string v1, " INVISIBLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1215
    :cond_61
    iget v1, p0, Landroid/icu/text/SpoofChecker$CheckResult;->checks:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6c

    .line 1216
    const-string v1, " CHAR_LIMIT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1218
    :cond_6c
    iget v1, p0, Landroid/icu/text/SpoofChecker$CheckResult;->checks:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_77

    .line 1219
    const-string v1, " MIXED_NUMBERS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1222
    :cond_77
    :goto_77
    const-string v1, ", numerics: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/SpoofChecker$CheckResult;->numerics:Landroid/icu/text/UnicodeSet;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/icu/text/UnicodeSet;->toPattern(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1223
    const-string v1, ", position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/icu/text/SpoofChecker$CheckResult;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1224
    const-string v1, ", restrictionLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/SpoofChecker$CheckResult;->restrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
