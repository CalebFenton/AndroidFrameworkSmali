.class final Landroid/ddm/DdmHandleAppName$Names;
.super Ljava/lang/Object;
.source "DdmHandleAppName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ddm/DdmHandleAppName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Names"
.end annotation


# instance fields
.field private final blacklist mAppName:Ljava/lang/String;

.field private final blacklist mPkgName:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Landroid/ddm/DdmHandleAppName$Names;->mAppName:Ljava/lang/String;

    .line 135
    iput-object p2, p0, Landroid/ddm/DdmHandleAppName$Names;->mPkgName:Ljava/lang/String;

    .line 136
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/ddm/DdmHandleAppName-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/ddm/DdmHandleAppName$Names;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist getAppName()Ljava/lang/String;
    .registers 2

    .line 139
    iget-object v0, p0, Landroid/ddm/DdmHandleAppName$Names;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPkgName()Ljava/lang/String;
    .registers 2

    .line 143
    iget-object v0, p0, Landroid/ddm/DdmHandleAppName$Names;->mPkgName:Ljava/lang/String;

    return-object v0
.end method
