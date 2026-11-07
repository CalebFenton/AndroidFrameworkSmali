.class Landroid/icu/impl/TimeZoneGenericNames$NameInfo;
.super Ljava/lang/Object;
.source "TimeZoneGenericNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneGenericNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameInfo"
.end annotation


# instance fields
.field final greylist-max-o type:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

.field final greylist-max-o tzID:Ljava/lang/String;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;)V
    .registers 3
    .param p1, "tzID"    # Ljava/lang/String;
    .param p2, "type"    # Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    iput-object p1, p0, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;->tzID:Ljava/lang/String;

    .line 596
    iput-object p2, p0, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;->type:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    .line 597
    return-void
.end method
