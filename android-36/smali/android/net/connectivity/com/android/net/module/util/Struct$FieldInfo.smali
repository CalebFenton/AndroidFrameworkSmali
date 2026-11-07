.class Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;
.super Ljava/lang/Object;
.source "Struct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/android/net/module/util/Struct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldInfo"
.end annotation


# instance fields
.field public final blacklist annotation:Landroid/net/connectivity/com/android/net/module/util/Struct$Field;

.field public final blacklist field:Ljava/lang/reflect/Field;


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/com/android/net/module/util/Struct$Field;Ljava/lang/reflect/Field;)V
    .registers 3
    .param p1, "annotation"    # Landroid/net/connectivity/com/android/net/module/util/Struct$Field;
    .param p2, "field"    # Ljava/lang/reflect/Field;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p1, p0, Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;->annotation:Landroid/net/connectivity/com/android/net/module/util/Struct$Field;

    .line 166
    iput-object p2, p0, Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 167
    return-void
.end method
