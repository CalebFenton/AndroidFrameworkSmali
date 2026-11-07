.class public final Landroid/provider/ContactsContract$CommonDataKinds$StructuredName;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;
.implements Landroid/provider/ContactsContract$ContactCounts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StructuredName"
.end annotation


# static fields
.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/name"

.field public static final whitelist DISPLAY_NAME:Ljava/lang/String; = "data1"

.field public static final whitelist FAMILY_NAME:Ljava/lang/String; = "data3"

.field public static final whitelist FULL_NAME_STYLE:Ljava/lang/String; = "data10"

.field public static final whitelist GIVEN_NAME:Ljava/lang/String; = "data2"

.field public static final whitelist MIDDLE_NAME:Ljava/lang/String; = "data5"

.field public static final whitelist PHONETIC_FAMILY_NAME:Ljava/lang/String; = "data9"

.field public static final whitelist PHONETIC_GIVEN_NAME:Ljava/lang/String; = "data7"

.field public static final whitelist PHONETIC_MIDDLE_NAME:Ljava/lang/String; = "data8"

.field public static final whitelist PHONETIC_NAME_STYLE:Ljava/lang/String; = "data11"

.field public static final whitelist PREFIX:Ljava/lang/String; = "data4"

.field public static final whitelist SUFFIX:Ljava/lang/String; = "data6"


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 6547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
