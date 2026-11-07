.class public final Ljava/lang/constant/ConstantDescs;
.super Ljava/lang/Object;
.source "ConstantDescs.java"


# static fields
.field public static final blacklist BSM_ENUM_CONSTANT:Ljava/lang/constant/DirectMethodHandleDesc;

.field public static final blacklist BSM_EXPLICIT_CAST:Ljava/lang/constant/DirectMethodHandleDesc;

.field public static final blacklist BSM_GET_STATIC_FINAL:Ljava/lang/constant/DirectMethodHandleDesc;

.field public static final blacklist BSM_INVOKE:Ljava/lang/constant/DirectMethodHandleDesc;

.field public static final blacklist BSM_NULL_CONSTANT:Ljava/lang/constant/DirectMethodHandleDesc;

.field public static final blacklist BSM_PRIMITIVE_CLASS:Ljava/lang/constant/DirectMethodHandleDesc;

.field public static final blacklist BSM_VARHANDLE_ARRAY:Ljava/lang/constant/DirectMethodHandleDesc;

.field public static final blacklist BSM_VARHANDLE_FIELD:Ljava/lang/constant/DirectMethodHandleDesc;

.field public static final blacklist BSM_VARHANDLE_STATIC_FIELD:Ljava/lang/constant/DirectMethodHandleDesc;

.field public static final blacklist CD_Boolean:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_Byte:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_CallSite:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_Character:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_Class:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_ClassDesc:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_Collection:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_ConstantBootstraps:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_ConstantDesc:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_DirectMethodHandleDesc:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_Double:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_DynamicCallSiteDesc:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_DynamicConstantDesc:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_Enum:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_EnumDesc:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_Exception:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_Float:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_Integer:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_List:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_Long:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_Map:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_MethodHandle:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_MethodHandleDesc:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_MethodHandleDesc_Kind:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_MethodHandles:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_MethodHandles_Lookup:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_MethodType:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_MethodTypeDesc:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_Number:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_Object:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_Set:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_Short:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_String:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_Throwable:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_VarHandle:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_VarHandleDesc:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_Void:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_boolean:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_byte:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_char:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_double:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_float:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_int:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_long:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_short:Ljava/lang/constant/ClassDesc;

.field public static final blacklist CD_void:Ljava/lang/constant/ClassDesc;

.field private static final blacklist CONDY_BOOTSTRAP_ARGS:[Ljava/lang/constant/ClassDesc;

.field public static final blacklist DEFAULT_NAME:Ljava/lang/String; = "_"

.field public static final blacklist FALSE:Ljava/lang/constant/DynamicConstantDesc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/constant/DynamicConstantDesc<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist INDY_BOOTSTRAP_ARGS:[Ljava/lang/constant/ClassDesc;

.field static final blacklist MHD_METHODHANDLE_ASTYPE:Ljava/lang/constant/DirectMethodHandleDesc;

.field public static final blacklist NULL:Ljava/lang/constant/ConstantDesc;

.field public static final blacklist TRUE:Ljava/lang/constant/DynamicConstantDesc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/constant/DynamicConstantDesc<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 67
    const-string v0, "java.lang.Object"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->of(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_Object:Ljava/lang/constant/ClassDesc;

    .line 70
    const-string v0, "java.lang.String"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->of(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_String:Ljava/lang/constant/ClassDesc;

    .line 73
    const-string v0, "java.lang.Class"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->of(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_Class:Ljava/lang/constant/ClassDesc;

    .line 76
    const-string v0, "java.lang.Number"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->of(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_Number:Ljava/lang/constant/ClassDesc;

    .line 79
    const-string v0, "java.lang.Integer"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->of(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_Integer:Ljava/lang/constant/ClassDesc;

    .line 82
    const-string v0, "java.lang.Long"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->of(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_Long:Ljava/lang/constant/ClassDesc;

    .line 85
    const-string v0, "java.lang.Float"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->of(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_Float:Ljava/lang/constant/ClassDesc;

    .line 88
    const-string v0, "java.lang.Double"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->of(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_Double:Ljava/lang/constant/ClassDesc;

    .line 91
    const-string v0, "java.lang.Short"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->of(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_Short:Ljava/lang/constant/ClassDesc;

    .line 94
    const-string v0, "java.lang.Byte"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->of(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_Byte:Ljava/lang/constant/ClassDesc;

    .line 97
    const-string v0, "java.lang.Character"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->of(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_Character:Ljava/lang/constant/ClassDesc;

    .line 100
    const-string v0, "java.lang.Boolean"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->of(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_Boolean:Ljava/lang/constant/ClassDesc;

    .line 103
    const-string v0, "java.lang.Void"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->of(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_Void:Ljava/lang/constant/ClassDesc;

    .line 106
    const-string v0, "java.lang.Throwable"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->of(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_Throwable:Ljava/lang/constant/ClassDesc;

    .line 109
    const-string v0, "java.lang.Exception"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->of(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_Exception:Ljava/lang/constant/ClassDesc;

    .line 112
    const-string v0, "java.lang.Enum"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->of(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_Enum:Ljava/lang/constant/ClassDesc;

    .line 115
    const-string v0, "java.lang.invoke.VarHandle"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->of(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_VarHandle:Ljava/lang/constant/ClassDesc;

    .line 118
    const-string v0, "java.lang.invoke.MethodHandles"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->of(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_MethodHandles:Ljava/lang/constant/ClassDesc;

    .line 121
    sget-object v0, Ljava/lang/constant/ConstantDescs;->CD_MethodHandles:Ljava/lang/constant/ClassDesc;

    const-string v1, "Lookup"

    invoke-interface {v0, v1}, Ljava/lang/constant/ClassDesc;->nested(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_MethodHandles_Lookup:Ljava/lang/constant/ClassDesc;

    .line 124
    const-string v0, "java.lang.invoke.MethodHandle"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->of(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_MethodHandle:Ljava/lang/constant/ClassDesc;

    .line 127
    const-string v0, "java.lang.invoke.MethodType"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->of(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_MethodType:Ljava/lang/constant/ClassDesc;

    .line 130
    const-string v0, "java.lang.invoke.CallSite"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->of(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_CallSite:Ljava/lang/constant/ClassDesc;

    .line 133
    const-string v0, "java.util.Collection"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->of(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_Collection:Ljava/lang/constant/ClassDesc;

    .line 136
    const-string v0, "java.util.List"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->of(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_List:Ljava/lang/constant/ClassDesc;

    .line 139
    const-string v0, "java.util.Set"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->of(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_Set:Ljava/lang/constant/ClassDesc;

    .line 142
    const-string v0, "java.util.Map"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->of(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_Map:Ljava/lang/constant/ClassDesc;

    .line 145
    const-string v0, "java.lang.constant.ConstantDesc"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->of(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_ConstantDesc:Ljava/lang/constant/ClassDesc;

    .line 148
    const-string v0, "java.lang.constant.ClassDesc"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->of(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_ClassDesc:Ljava/lang/constant/ClassDesc;

    .line 151
    sget-object v0, Ljava/lang/constant/ConstantDescs;->CD_Enum:Ljava/lang/constant/ClassDesc;

    const-string v1, "EnumDesc"

    invoke-interface {v0, v1}, Ljava/lang/constant/ClassDesc;->nested(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_EnumDesc:Ljava/lang/constant/ClassDesc;

    .line 154
    const-string v0, "java.lang.constant.MethodTypeDesc"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->of(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_MethodTypeDesc:Ljava/lang/constant/ClassDesc;

    .line 157
    const-string v0, "java.lang.constant.MethodHandleDesc"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->of(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_MethodHandleDesc:Ljava/lang/constant/ClassDesc;

    .line 160
    const-string v0, "java.lang.constant.DirectMethodHandleDesc"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->of(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_DirectMethodHandleDesc:Ljava/lang/constant/ClassDesc;

    .line 163
    sget-object v0, Ljava/lang/constant/ConstantDescs;->CD_VarHandle:Ljava/lang/constant/ClassDesc;

    const-string v1, "VarHandleDesc"

    invoke-interface {v0, v1}, Ljava/lang/constant/ClassDesc;->nested(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_VarHandleDesc:Ljava/lang/constant/ClassDesc;

    .line 166
    sget-object v0, Ljava/lang/constant/ConstantDescs;->CD_DirectMethodHandleDesc:Ljava/lang/constant/ClassDesc;

    const-string v1, "Kind"

    invoke-interface {v0, v1}, Ljava/lang/constant/ClassDesc;->nested(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_MethodHandleDesc_Kind:Ljava/lang/constant/ClassDesc;

    .line 169
    const-string v0, "java.lang.constant.DynamicConstantDesc"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->of(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_DynamicConstantDesc:Ljava/lang/constant/ClassDesc;

    .line 172
    const-string v0, "java.lang.constant.DynamicCallSiteDesc"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->of(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_DynamicCallSiteDesc:Ljava/lang/constant/ClassDesc;

    .line 175
    const-string v0, "java.lang.invoke.ConstantBootstraps"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->of(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_ConstantBootstraps:Ljava/lang/constant/ClassDesc;

    .line 177
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/constant/ClassDesc;

    sget-object v2, Ljava/lang/constant/ConstantDescs;->CD_MethodHandles_Lookup:Ljava/lang/constant/ClassDesc;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/constant/ConstantDescs;->CD_String:Ljava/lang/constant/ClassDesc;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/constant/ConstantDescs;->CD_MethodType:Ljava/lang/constant/ClassDesc;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Ljava/lang/constant/ConstantDescs;->INDY_BOOTSTRAP_ARGS:[Ljava/lang/constant/ClassDesc;

    .line 182
    new-array v0, v0, [Ljava/lang/constant/ClassDesc;

    sget-object v1, Ljava/lang/constant/ConstantDescs;->CD_MethodHandles_Lookup:Ljava/lang/constant/ClassDesc;

    aput-object v1, v0, v3

    sget-object v1, Ljava/lang/constant/ConstantDescs;->CD_String:Ljava/lang/constant/ClassDesc;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/constant/ConstantDescs;->CD_Class:Ljava/lang/constant/ClassDesc;

    aput-object v1, v0, v5

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CONDY_BOOTSTRAP_ARGS:[Ljava/lang/constant/ClassDesc;

    .line 188
    sget-object v0, Ljava/lang/constant/ConstantDescs;->CD_ConstantBootstraps:Ljava/lang/constant/ClassDesc;

    sget-object v1, Ljava/lang/constant/ConstantDescs;->CD_Class:Ljava/lang/constant/ClassDesc;

    new-array v2, v3, [Ljava/lang/constant/ClassDesc;

    .line 189
    const-string v6, "primitiveClass"

    invoke-static {v0, v6, v1, v2}, Ljava/lang/constant/ConstantDescs;->ofConstantBootstrap(Ljava/lang/constant/ClassDesc;Ljava/lang/String;Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ClassDesc;)Ljava/lang/constant/DirectMethodHandleDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->BSM_PRIMITIVE_CLASS:Ljava/lang/constant/DirectMethodHandleDesc;

    .line 193
    sget-object v0, Ljava/lang/constant/ConstantDescs;->CD_ConstantBootstraps:Ljava/lang/constant/ClassDesc;

    sget-object v1, Ljava/lang/constant/ConstantDescs;->CD_Enum:Ljava/lang/constant/ClassDesc;

    new-array v2, v3, [Ljava/lang/constant/ClassDesc;

    .line 194
    const-string v6, "enumConstant"

    invoke-static {v0, v6, v1, v2}, Ljava/lang/constant/ConstantDescs;->ofConstantBootstrap(Ljava/lang/constant/ClassDesc;Ljava/lang/String;Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ClassDesc;)Ljava/lang/constant/DirectMethodHandleDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->BSM_ENUM_CONSTANT:Ljava/lang/constant/DirectMethodHandleDesc;

    .line 201
    sget-object v0, Ljava/lang/constant/ConstantDescs;->CD_ConstantBootstraps:Ljava/lang/constant/ClassDesc;

    sget-object v1, Ljava/lang/constant/ConstantDescs;->CD_Object:Ljava/lang/constant/ClassDesc;

    new-array v2, v4, [Ljava/lang/constant/ClassDesc;

    sget-object v6, Ljava/lang/constant/ConstantDescs;->CD_Class:Ljava/lang/constant/ClassDesc;

    aput-object v6, v2, v3

    .line 202
    const-string v6, "getStaticFinal"

    invoke-static {v0, v6, v1, v2}, Ljava/lang/constant/ConstantDescs;->ofConstantBootstrap(Ljava/lang/constant/ClassDesc;Ljava/lang/String;Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ClassDesc;)Ljava/lang/constant/DirectMethodHandleDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->BSM_GET_STATIC_FINAL:Ljava/lang/constant/DirectMethodHandleDesc;

    .line 206
    sget-object v0, Ljava/lang/constant/ConstantDescs;->CD_ConstantBootstraps:Ljava/lang/constant/ClassDesc;

    sget-object v1, Ljava/lang/constant/ConstantDescs;->CD_Object:Ljava/lang/constant/ClassDesc;

    new-array v2, v3, [Ljava/lang/constant/ClassDesc;

    .line 207
    const-string v6, "nullConstant"

    invoke-static {v0, v6, v1, v2}, Ljava/lang/constant/ConstantDescs;->ofConstantBootstrap(Ljava/lang/constant/ClassDesc;Ljava/lang/String;Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ClassDesc;)Ljava/lang/constant/DirectMethodHandleDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->BSM_NULL_CONSTANT:Ljava/lang/constant/DirectMethodHandleDesc;

    .line 211
    sget-object v0, Ljava/lang/constant/ConstantDescs;->CD_ConstantBootstraps:Ljava/lang/constant/ClassDesc;

    sget-object v1, Ljava/lang/constant/ConstantDescs;->CD_VarHandle:Ljava/lang/constant/ClassDesc;

    new-array v2, v5, [Ljava/lang/constant/ClassDesc;

    sget-object v6, Ljava/lang/constant/ConstantDescs;->CD_Class:Ljava/lang/constant/ClassDesc;

    aput-object v6, v2, v3

    sget-object v6, Ljava/lang/constant/ConstantDescs;->CD_Class:Ljava/lang/constant/ClassDesc;

    aput-object v6, v2, v4

    .line 212
    const-string v6, "fieldVarHandle"

    invoke-static {v0, v6, v1, v2}, Ljava/lang/constant/ConstantDescs;->ofConstantBootstrap(Ljava/lang/constant/ClassDesc;Ljava/lang/String;Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ClassDesc;)Ljava/lang/constant/DirectMethodHandleDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->BSM_VARHANDLE_FIELD:Ljava/lang/constant/DirectMethodHandleDesc;

    .line 216
    sget-object v0, Ljava/lang/constant/ConstantDescs;->CD_ConstantBootstraps:Ljava/lang/constant/ClassDesc;

    sget-object v1, Ljava/lang/constant/ConstantDescs;->CD_VarHandle:Ljava/lang/constant/ClassDesc;

    new-array v2, v5, [Ljava/lang/constant/ClassDesc;

    sget-object v6, Ljava/lang/constant/ConstantDescs;->CD_Class:Ljava/lang/constant/ClassDesc;

    aput-object v6, v2, v3

    sget-object v6, Ljava/lang/constant/ConstantDescs;->CD_Class:Ljava/lang/constant/ClassDesc;

    aput-object v6, v2, v4

    .line 217
    const-string v6, "staticFieldVarHandle"

    invoke-static {v0, v6, v1, v2}, Ljava/lang/constant/ConstantDescs;->ofConstantBootstrap(Ljava/lang/constant/ClassDesc;Ljava/lang/String;Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ClassDesc;)Ljava/lang/constant/DirectMethodHandleDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->BSM_VARHANDLE_STATIC_FIELD:Ljava/lang/constant/DirectMethodHandleDesc;

    .line 221
    sget-object v0, Ljava/lang/constant/ConstantDescs;->CD_ConstantBootstraps:Ljava/lang/constant/ClassDesc;

    sget-object v1, Ljava/lang/constant/ConstantDescs;->CD_VarHandle:Ljava/lang/constant/ClassDesc;

    new-array v2, v4, [Ljava/lang/constant/ClassDesc;

    sget-object v6, Ljava/lang/constant/ConstantDescs;->CD_Class:Ljava/lang/constant/ClassDesc;

    aput-object v6, v2, v3

    .line 222
    const-string v6, "arrayVarHandle"

    invoke-static {v0, v6, v1, v2}, Ljava/lang/constant/ConstantDescs;->ofConstantBootstrap(Ljava/lang/constant/ClassDesc;Ljava/lang/String;Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ClassDesc;)Ljava/lang/constant/DirectMethodHandleDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->BSM_VARHANDLE_ARRAY:Ljava/lang/constant/DirectMethodHandleDesc;

    .line 226
    sget-object v0, Ljava/lang/constant/ConstantDescs;->CD_ConstantBootstraps:Ljava/lang/constant/ClassDesc;

    sget-object v1, Ljava/lang/constant/ConstantDescs;->CD_Object:Ljava/lang/constant/ClassDesc;

    new-array v2, v5, [Ljava/lang/constant/ClassDesc;

    sget-object v5, Ljava/lang/constant/ConstantDescs;->CD_MethodHandle:Ljava/lang/constant/ClassDesc;

    aput-object v5, v2, v3

    sget-object v5, Ljava/lang/constant/ConstantDescs;->CD_Object:Ljava/lang/constant/ClassDesc;

    .line 228
    invoke-interface {v5}, Ljava/lang/constant/ClassDesc;->arrayType()Ljava/lang/constant/ClassDesc;

    move-result-object v5

    aput-object v5, v2, v4

    .line 227
    const-string v5, "invoke"

    invoke-static {v0, v5, v1, v2}, Ljava/lang/constant/ConstantDescs;->ofConstantBootstrap(Ljava/lang/constant/ClassDesc;Ljava/lang/String;Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ClassDesc;)Ljava/lang/constant/DirectMethodHandleDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->BSM_INVOKE:Ljava/lang/constant/DirectMethodHandleDesc;

    .line 234
    sget-object v0, Ljava/lang/constant/ConstantDescs;->CD_ConstantBootstraps:Ljava/lang/constant/ClassDesc;

    sget-object v1, Ljava/lang/constant/ConstantDescs;->CD_Object:Ljava/lang/constant/ClassDesc;

    new-array v2, v4, [Ljava/lang/constant/ClassDesc;

    sget-object v5, Ljava/lang/constant/ConstantDescs;->CD_Object:Ljava/lang/constant/ClassDesc;

    aput-object v5, v2, v3

    .line 235
    const-string v5, "explicitCast"

    invoke-static {v0, v5, v1, v2}, Ljava/lang/constant/ConstantDescs;->ofConstantBootstrap(Ljava/lang/constant/ClassDesc;Ljava/lang/String;Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ClassDesc;)Ljava/lang/constant/DirectMethodHandleDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->BSM_EXPLICIT_CAST:Ljava/lang/constant/DirectMethodHandleDesc;

    .line 239
    const-string v0, "I"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->ofDescriptor(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_int:Ljava/lang/constant/ClassDesc;

    .line 242
    const-string v0, "J"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->ofDescriptor(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_long:Ljava/lang/constant/ClassDesc;

    .line 245
    const-string v0, "F"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->ofDescriptor(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_float:Ljava/lang/constant/ClassDesc;

    .line 248
    const-string v0, "D"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->ofDescriptor(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_double:Ljava/lang/constant/ClassDesc;

    .line 251
    const-string v0, "S"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->ofDescriptor(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_short:Ljava/lang/constant/ClassDesc;

    .line 254
    const-string v0, "B"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->ofDescriptor(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_byte:Ljava/lang/constant/ClassDesc;

    .line 257
    const-string v0, "C"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->ofDescriptor(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_char:Ljava/lang/constant/ClassDesc;

    .line 260
    const-string v0, "Z"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->ofDescriptor(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_boolean:Ljava/lang/constant/ClassDesc;

    .line 263
    const-string v0, "V"

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->ofDescriptor(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->CD_void:Ljava/lang/constant/ClassDesc;

    .line 266
    sget-object v0, Ljava/lang/constant/ConstantDescs;->BSM_NULL_CONSTANT:Ljava/lang/constant/DirectMethodHandleDesc;

    sget-object v1, Ljava/lang/constant/ConstantDescs;->CD_Object:Ljava/lang/constant/ClassDesc;

    new-array v2, v3, [Ljava/lang/constant/ConstantDesc;

    .line 267
    const-string v5, "_"

    invoke-static {v0, v5, v1, v2}, Ljava/lang/constant/DynamicConstantDesc;->ofNamed(Ljava/lang/constant/DirectMethodHandleDesc;Ljava/lang/String;Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ConstantDesc;)Ljava/lang/constant/DynamicConstantDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->NULL:Ljava/lang/constant/ConstantDesc;

    .line 274
    sget-object v0, Ljava/lang/constant/ConstantDescs;->BSM_GET_STATIC_FINAL:Ljava/lang/constant/DirectMethodHandleDesc;

    sget-object v1, Ljava/lang/constant/ConstantDescs;->CD_Boolean:Ljava/lang/constant/ClassDesc;

    new-array v2, v4, [Ljava/lang/constant/ConstantDesc;

    sget-object v5, Ljava/lang/constant/ConstantDescs;->CD_Boolean:Ljava/lang/constant/ClassDesc;

    aput-object v5, v2, v3

    .line 275
    const-string v5, "TRUE"

    invoke-static {v0, v5, v1, v2}, Ljava/lang/constant/DynamicConstantDesc;->ofNamed(Ljava/lang/constant/DirectMethodHandleDesc;Ljava/lang/String;Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ConstantDesc;)Ljava/lang/constant/DynamicConstantDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->TRUE:Ljava/lang/constant/DynamicConstantDesc;

    .line 282
    sget-object v0, Ljava/lang/constant/ConstantDescs;->BSM_GET_STATIC_FINAL:Ljava/lang/constant/DirectMethodHandleDesc;

    sget-object v1, Ljava/lang/constant/ConstantDescs;->CD_Boolean:Ljava/lang/constant/ClassDesc;

    new-array v2, v4, [Ljava/lang/constant/ConstantDesc;

    sget-object v5, Ljava/lang/constant/ConstantDescs;->CD_Boolean:Ljava/lang/constant/ClassDesc;

    aput-object v5, v2, v3

    .line 283
    const-string v5, "FALSE"

    invoke-static {v0, v5, v1, v2}, Ljava/lang/constant/DynamicConstantDesc;->ofNamed(Ljava/lang/constant/DirectMethodHandleDesc;Ljava/lang/String;Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ConstantDesc;)Ljava/lang/constant/DynamicConstantDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->FALSE:Ljava/lang/constant/DynamicConstantDesc;

    .line 286
    sget-object v0, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->VIRTUAL:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    sget-object v1, Ljava/lang/constant/ConstantDescs;->CD_MethodHandle:Ljava/lang/constant/ClassDesc;

    sget-object v2, Ljava/lang/constant/ConstantDescs;->CD_MethodHandle:Ljava/lang/constant/ClassDesc;

    new-array v4, v4, [Ljava/lang/constant/ClassDesc;

    sget-object v5, Ljava/lang/constant/ConstantDescs;->CD_MethodType:Ljava/lang/constant/ClassDesc;

    aput-object v5, v4, v3

    .line 288
    invoke-static {v2, v4}, Ljava/lang/constant/MethodTypeDesc;->of(Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ClassDesc;)Ljava/lang/constant/MethodTypeDesc;

    move-result-object v2

    .line 287
    const-string v3, "asType"

    invoke-static {v0, v1, v3, v2}, Ljava/lang/constant/MethodHandleDesc;->ofMethod(Ljava/lang/constant/DirectMethodHandleDesc$Kind;Ljava/lang/constant/ClassDesc;Ljava/lang/String;Ljava/lang/constant/MethodTypeDesc;)Ljava/lang/constant/DirectMethodHandleDesc;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantDescs;->MHD_METHODHANDLE_ASTYPE:Ljava/lang/constant/DirectMethodHandleDesc;

    .line 286
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs blacklist ofCallsiteBootstrap(Ljava/lang/constant/ClassDesc;Ljava/lang/String;Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ClassDesc;)Ljava/lang/constant/DirectMethodHandleDesc;
    .registers 8
    .param p0, "owner"    # Ljava/lang/constant/ClassDesc;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "returnType"    # Ljava/lang/constant/ClassDesc;
    .param p3, "paramTypes"    # [Ljava/lang/constant/ClassDesc;

    .line 306
    sget-object v0, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->STATIC:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    invoke-static {p2, p3}, Ljava/lang/constant/MethodTypeDesc;->of(Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ClassDesc;)Ljava/lang/constant/MethodTypeDesc;

    move-result-object v1

    sget-object v2, Ljava/lang/constant/ConstantDescs;->INDY_BOOTSTRAP_ARGS:[Ljava/lang/constant/ClassDesc;

    .line 307
    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Ljava/lang/constant/MethodTypeDesc;->insertParameterTypes(I[Ljava/lang/constant/ClassDesc;)Ljava/lang/constant/MethodTypeDesc;

    move-result-object v1

    .line 306
    invoke-static {v0, p0, p1, v1}, Ljava/lang/constant/MethodHandleDesc;->ofMethod(Ljava/lang/constant/DirectMethodHandleDesc$Kind;Ljava/lang/constant/ClassDesc;Ljava/lang/String;Ljava/lang/constant/MethodTypeDesc;)Ljava/lang/constant/DirectMethodHandleDesc;

    move-result-object v0

    return-object v0
.end method

.method public static varargs blacklist ofConstantBootstrap(Ljava/lang/constant/ClassDesc;Ljava/lang/String;Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ClassDesc;)Ljava/lang/constant/DirectMethodHandleDesc;
    .registers 8
    .param p0, "owner"    # Ljava/lang/constant/ClassDesc;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "returnType"    # Ljava/lang/constant/ClassDesc;
    .param p3, "paramTypes"    # [Ljava/lang/constant/ClassDesc;

    .line 327
    sget-object v0, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->STATIC:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    invoke-static {p2, p3}, Ljava/lang/constant/MethodTypeDesc;->of(Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ClassDesc;)Ljava/lang/constant/MethodTypeDesc;

    move-result-object v1

    sget-object v2, Ljava/lang/constant/ConstantDescs;->CONDY_BOOTSTRAP_ARGS:[Ljava/lang/constant/ClassDesc;

    .line 328
    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Ljava/lang/constant/MethodTypeDesc;->insertParameterTypes(I[Ljava/lang/constant/ClassDesc;)Ljava/lang/constant/MethodTypeDesc;

    move-result-object v1

    .line 327
    invoke-static {v0, p0, p1, v1}, Ljava/lang/constant/MethodHandleDesc;->ofMethod(Ljava/lang/constant/DirectMethodHandleDesc$Kind;Ljava/lang/constant/ClassDesc;Ljava/lang/String;Ljava/lang/constant/MethodTypeDesc;)Ljava/lang/constant/DirectMethodHandleDesc;

    move-result-object v0

    return-object v0
.end method
