.class public final Landroid/provider/Telephony$CarrierId$All;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$CarrierId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "All"
.end annotation


# static fields
.field public static final greylist-max-o APN:Ljava/lang/String; = "apn"

.field public static final greylist-max-o CONTENT_URI:Landroid/net/Uri;

.field public static final greylist-max-o GID1:Ljava/lang/String; = "gid1"

.field public static final greylist-max-o GID2:Ljava/lang/String; = "gid2"

.field public static final greylist-max-o ICCID_PREFIX:Ljava/lang/String; = "iccid_prefix"

.field public static final greylist-max-o IMSI_PREFIX_XPATTERN:Ljava/lang/String; = "imsi_prefix_xpattern"

.field public static final greylist-max-o MCCMNC:Ljava/lang/String; = "mccmnc"

.field public static final greylist-max-o PLMN:Ljava/lang/String; = "plmn"

.field public static final blacklist PRIVILEGE_ACCESS_RULE:Ljava/lang/String; = "privilege_access_rule"

.field public static final greylist-max-o SPN:Ljava/lang/String; = "spn"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 4271
    const-string v0, "content://carrier_id/all"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$CarrierId$All;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 4210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4211
    return-void
.end method
