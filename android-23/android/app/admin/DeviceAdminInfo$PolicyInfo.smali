.class public Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
.super Ljava/lang/Object;
.source "DeviceAdminInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DeviceAdminInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PolicyInfo"
.end annotation


# instance fields
.field public final description:I

.field public final descriptionForSecondaryUsers:I

.field public final ident:I

.field public final label:I

.field public final labelForSecondaryUsers:I

.field public final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;II)V
    .locals 7
    .param p1, "ident"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "label"    # I
    .param p4, "description"    # I

    #@0
    .prologue
    move-object v0, p0

    #@1
    move v1, p1

    #@2
    move-object v2, p2

    #@3
    move v3, p3

    #@4
    move v4, p4

    #@5
    move v5, p3

    #@6
    move v6, p4

    #@7
    .line 175
    invoke-direct/range {v0 .. v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;IIII)V

    #@a
    .line 174
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIII)V
    .locals 0
    .param p1, "ident"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "label"    # I
    .param p4, "description"    # I
    .param p5, "labelForSecondaryUsers"    # I
    .param p6, "descriptionForSecondaryUsers"    # I

    #@0
    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 180
    iput p1, p0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    #@5
    .line 181
    iput-object p2, p0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    #@7
    .line 182
    iput p3, p0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->label:I

    #@9
    .line 183
    iput p4, p0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->description:I

    #@b
    .line 184
    iput p5, p0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->labelForSecondaryUsers:I

    #@d
    .line 185
    iput p6, p0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->descriptionForSecondaryUsers:I

    #@f
    .line 179
    return-void
.end method
