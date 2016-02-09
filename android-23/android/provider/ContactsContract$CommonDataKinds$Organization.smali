.class public final Landroid/provider/ContactsContract$CommonDataKinds$Organization;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;
.implements Landroid/provider/ContactsContract$CommonDataKinds$CommonColumns;
.implements Landroid/provider/ContactsContract$ContactCounts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Organization"
.end annotation


# static fields
.field public static final COMPANY:Ljava/lang/String; = "data1"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/organization"

.field public static final DEPARTMENT:Ljava/lang/String; = "data5"

.field public static final JOB_DESCRIPTION:Ljava/lang/String; = "data6"

.field public static final OFFICE_LOCATION:Ljava/lang/String; = "data9"

.field public static final PHONETIC_NAME:Ljava/lang/String; = "data8"

.field public static final PHONETIC_NAME_STYLE:Ljava/lang/String; = "data10"

.field public static final SYMBOL:Ljava/lang/String; = "data7"

.field public static final TITLE:Ljava/lang/String; = "data4"

.field public static final TYPE_OTHER:I = 0x2

.field public static final TYPE_WORK:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 6637
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static final getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 6713
    if-nez p1, :cond_0

    #@2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 6716
    :cond_0
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Organization;->getTypeLabelResource(I)I

    #@b
    move-result v0

    #@c
    .line 6717
    .local v0, "labelRes":I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 6714
    .end local v0    # "labelRes":I
    :cond_1
    return-object p2
.end method

.method public static final getTypeLabelResource(I)I
    .locals 1
    .param p0, "type"    # I

    #@0
    .prologue
    .line 6699
    packed-switch p0, :pswitch_data_0

    #@3
    .line 6702
    const v0, 0x1040243

    #@6
    return v0

    #@7
    .line 6700
    :pswitch_0
    const v0, 0x1040241

    #@a
    return v0

    #@b
    .line 6701
    :pswitch_1
    const v0, 0x1040242

    #@e
    return v0

    #@f
    .line 6699
    nop

    #@10
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
