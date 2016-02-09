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
        "Ljava/lang/Comparable",
        "<",
        "Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private resId:I

.field private widgetResId:I


# direct methods
.method static synthetic -set0(Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    #@2
    return p1
.end method

.method static synthetic -set2(Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    #@2
    return p1
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;)I
    .locals 4
    .param p1, "other"    # Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 108
    iget-object v1, p0, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    #@3
    iget-object v2, p1, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    #@5
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@8
    move-result v0

    #@9
    .line 109
    .local v0, "compareNames":I
    if-nez v0, :cond_2

    #@b
    .line 110
    iget v1, p0, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    #@d
    iget v2, p1, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    #@f
    if-ne v1, v2, :cond_1

    #@11
    .line 111
    iget v1, p0, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    #@13
    iget v2, p1, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    #@15
    if-ne v1, v2, :cond_0

    #@17
    .line 112
    return v3

    #@18
    .line 114
    :cond_0
    iget v1, p0, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    #@1a
    iget v2, p1, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    #@1c
    sub-int/2addr v1, v2

    #@1d
    return v1

    #@1e
    .line 117
    :cond_1
    iget v1, p0, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    #@20
    iget v2, p1, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    #@22
    sub-int/2addr v1, v2

    #@23
    return v1

    #@24
    .line 120
    :cond_2
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 107
    check-cast p1, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    #@2
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->compareTo(Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;)I

    #@5
    move-result v0

    #@6
    return v0
.end method
