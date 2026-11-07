.class Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;
.super Ljava/lang/Object;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/PreferenceGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreferenceLayout"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private greylist-max-o name:Ljava/lang/String;

.field private greylist-max-o resId:I

.field private greylist-max-o widgetResId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputname(Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputresId(Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;I)V
    .registers 2

    iput p1, p0, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputwidgetResId(Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;I)V
    .registers 2

    iput p1, p0, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/preference/PreferenceGroupAdapter-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o compareTo(Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;)I
    .registers 5
    .param p1, "other"    # Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 116
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 117
    .local v0, "compareNames":I
    if-nez v0, :cond_24

    .line 118
    iget v1, p0, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    iget v2, p1, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    if-ne v1, v2, :cond_1e

    .line 119
    iget v1, p0, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    iget v2, p1, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    if-ne v1, v2, :cond_18

    .line 120
    const/4 v1, 0x0

    return v1

    .line 122
    :cond_18
    iget v1, p0, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    iget v2, p1, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    sub-int/2addr v1, v2

    return v1

    .line 125
    :cond_1e
    iget v1, p0, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    iget v2, p1, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    sub-int/2addr v1, v2

    return v1

    .line 128
    :cond_24
    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 110
    check-cast p1, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->compareTo(Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;)I

    move-result p1

    return p1
.end method
