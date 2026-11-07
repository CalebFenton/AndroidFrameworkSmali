.class final Landroid/view/ViewProtoLogGroups;
.super Ljava/lang/Object;
.source "ViewProtoLogGroups.java"


# static fields
.field static final blacklist ALL_GROUPS:[Lcom/android/internal/protolog/ProtoLogGroup;

.field static final blacklist IME_INSETS_CONTROLLER:Lcom/android/internal/protolog/ProtoLogGroup;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 35
    new-instance v0, Lcom/android/internal/protolog/ProtoLogGroup;

    .line 36
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v1

    const-string v2, "IME_INSETS_CONTROLLER"

    const-string v3, "InsetsController"

    invoke-direct {v0, v2, v3, v1}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Landroid/view/ViewProtoLogGroups;->IME_INSETS_CONTROLLER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v1, 0x0

    sget-object v2, Landroid/view/ViewProtoLogGroups;->IME_INSETS_CONTROLLER:Lcom/android/internal/protolog/ProtoLogGroup;

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/ViewProtoLogGroups;->ALL_GROUPS:[Lcom/android/internal/protolog/ProtoLogGroup;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
