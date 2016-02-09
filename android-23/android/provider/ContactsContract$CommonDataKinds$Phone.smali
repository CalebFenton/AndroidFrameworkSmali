.class public final Landroid/provider/ContactsContract$CommonDataKinds$Phone;
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
    name = "Phone"
.end annotation


# static fields
.field public static final CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/phone_v2"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/phone_v2"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

.field public static final NORMALIZED_NUMBER:Ljava/lang/String; = "data4"

.field public static final NUMBER:Ljava/lang/String; = "data1"

.field public static final SEARCH_DISPLAY_NAME_KEY:Ljava/lang/String; = "search_display_name"

.field public static final SEARCH_PHONE_NUMBER_KEY:Ljava/lang/String; = "search_phone_number"

.field public static final TYPE_ASSISTANT:I = 0x13

.field public static final TYPE_CALLBACK:I = 0x8

.field public static final TYPE_CAR:I = 0x9

.field public static final TYPE_COMPANY_MAIN:I = 0xa

.field public static final TYPE_FAX_HOME:I = 0x5

.field public static final TYPE_FAX_WORK:I = 0x4

.field public static final TYPE_HOME:I = 0x1

.field public static final TYPE_ISDN:I = 0xb

.field public static final TYPE_MAIN:I = 0xc

.field public static final TYPE_MMS:I = 0x14

.field public static final TYPE_MOBILE:I = 0x2

.field public static final TYPE_OTHER:I = 0x7

.field public static final TYPE_OTHER_FAX:I = 0xd

.field public static final TYPE_PAGER:I = 0x6

.field public static final TYPE_RADIO:I = 0xe

.field public static final TYPE_TELEX:I = 0xf

.field public static final TYPE_TTY_TDD:I = 0x10

.field public static final TYPE_WORK:I = 0x3

.field public static final TYPE_WORK_MOBILE:I = 0x11

.field public static final TYPE_WORK_PAGER:I = 0x12


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 5827
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    #@2
    .line 5828
    const-string/jumbo v1, "phones"

    #@5
    .line 5827
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@8
    move-result-object v0

    #@9
    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    #@b
    .line 5842
    sget-object v0, Landroid/provider/ContactsContract$Data;->ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

    #@d
    const-string/jumbo v1, "phones"

    #@10
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@13
    move-result-object v0

    #@14
    .line 5841
    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

    #@16
    .line 5850
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    #@18
    .line 5851
    const-string/jumbo v1, "filter"

    #@1b
    .line 5850
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@1e
    move-result-object v0

    #@1f
    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    #@21
    .line 5806
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 5811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static final getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 5920
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1, p2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static final getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "labelArray"    # [Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 5910
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1, p2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static final getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 5960
    if-eqz p1, :cond_0

    #@2
    const/16 v1, 0x13

    #@4
    if-ne p1, v1, :cond_1

    #@6
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_2

    #@c
    .line 5963
    :cond_1
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    #@f
    move-result v0

    #@10
    .line 5964
    .local v0, "labelRes":I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@13
    move-result-object v1

    #@14
    return-object v1

    #@15
    .line 5961
    .end local v0    # "labelRes":I
    :cond_2
    return-object p2
.end method

.method public static final getTypeLabelResource(I)I
    .locals 1
    .param p0, "type"    # I

    #@0
    .prologue
    .line 5928
    packed-switch p0, :pswitch_data_0

    #@3
    .line 5949
    const v0, 0x1040211

    #@6
    return v0

    #@7
    .line 5929
    :pswitch_0
    const v0, 0x1040212

    #@a
    return v0

    #@b
    .line 5930
    :pswitch_1
    const v0, 0x1040213

    #@e
    return v0

    #@f
    .line 5931
    :pswitch_2
    const v0, 0x1040214

    #@12
    return v0

    #@13
    .line 5932
    :pswitch_3
    const v0, 0x1040215

    #@16
    return v0

    #@17
    .line 5933
    :pswitch_4
    const v0, 0x1040216

    #@1a
    return v0

    #@1b
    .line 5934
    :pswitch_5
    const v0, 0x1040217

    #@1e
    return v0

    #@1f
    .line 5935
    :pswitch_6
    const v0, 0x1040218

    #@22
    return v0

    #@23
    .line 5936
    :pswitch_7
    const v0, 0x1040219

    #@26
    return v0

    #@27
    .line 5937
    :pswitch_8
    const v0, 0x104021a

    #@2a
    return v0

    #@2b
    .line 5938
    :pswitch_9
    const v0, 0x104021b

    #@2e
    return v0

    #@2f
    .line 5939
    :pswitch_a
    const v0, 0x104021c

    #@32
    return v0

    #@33
    .line 5940
    :pswitch_b
    const v0, 0x104021d

    #@36
    return v0

    #@37
    .line 5941
    :pswitch_c
    const v0, 0x104021e

    #@3a
    return v0

    #@3b
    .line 5942
    :pswitch_d
    const v0, 0x104021f

    #@3e
    return v0

    #@3f
    .line 5943
    :pswitch_e
    const v0, 0x1040220

    #@42
    return v0

    #@43
    .line 5944
    :pswitch_f
    const v0, 0x1040221

    #@46
    return v0

    #@47
    .line 5945
    :pswitch_10
    const v0, 0x1040222

    #@4a
    return v0

    #@4b
    .line 5946
    :pswitch_11
    const v0, 0x1040223

    #@4e
    return v0

    #@4f
    .line 5947
    :pswitch_12
    const v0, 0x1040224

    #@52
    return v0

    #@53
    .line 5948
    :pswitch_13
    const v0, 0x1040225

    #@56
    return v0

    #@57
    .line 5928
    nop

    #@58
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method
