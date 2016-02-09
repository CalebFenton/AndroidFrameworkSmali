.class public final Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;
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
    name = "StructuredPostal"
.end annotation


# static fields
.field public static final CITY:Ljava/lang/String; = "data7"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/postal-address_v2"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/postal-address_v2"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final COUNTRY:Ljava/lang/String; = "data10"

.field public static final FORMATTED_ADDRESS:Ljava/lang/String; = "data1"

.field public static final NEIGHBORHOOD:Ljava/lang/String; = "data6"

.field public static final POBOX:Ljava/lang/String; = "data5"

.field public static final POSTCODE:Ljava/lang/String; = "data9"

.field public static final REGION:Ljava/lang/String; = "data8"

.field public static final STREET:Ljava/lang/String; = "data4"

.field public static final TYPE_HOME:I = 0x1

.field public static final TYPE_OTHER:I = 0x3

.field public static final TYPE_WORK:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 6275
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    #@2
    .line 6276
    const-string/jumbo v1, "postals"

    #@5
    .line 6275
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@8
    move-result-object v0

    #@9
    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->CONTENT_URI:Landroid/net/Uri;

    #@b
    .line 6253
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 6258
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
    .line 6367
    if-nez p1, :cond_0

    #@2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 6370
    :cond_0
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->getTypeLabelResource(I)I

    #@b
    move-result v0

    #@c
    .line 6371
    .local v0, "labelRes":I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 6368
    .end local v0    # "labelRes":I
    :cond_1
    return-object p2
.end method

.method public static final getTypeLabelResource(I)I
    .locals 1
    .param p0, "type"    # I

    #@0
    .prologue
    .line 6352
    packed-switch p0, :pswitch_data_0

    #@3
    .line 6356
    const v0, 0x104022f

    #@6
    return v0

    #@7
    .line 6353
    :pswitch_0
    const v0, 0x1040230

    #@a
    return v0

    #@b
    .line 6354
    :pswitch_1
    const v0, 0x1040231

    #@e
    return v0

    #@f
    .line 6355
    :pswitch_2
    const v0, 0x1040232

    #@12
    return v0

    #@13
    .line 6352
    nop

    #@14
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
