local Groups = {
	Keywords = {"if","else","export","for","while","break","continue","repeat","until","next","not","then","end","function","local","or","and","do","self","type","typeof","in"};

	DataTypes = {
		["Axes"] = {
			Constructors = {"new"};
		};
		["BrickColor"] = {
			Constructors = {"new","palette","random","White","Gray","DarkGray","Black","Red","Yellow","Green","Blue"};
		};
		["CatalogSearchParams"] = {
			Constructors = {"new"};
		};
		["CFrame"] = {
			Constructors = {"new","lookAt","lookAlong","fromRotationBetweenVectors","fromEularAngles","fromEularAnglesXYZ","Angles","fromOrientation","fromAxisAngle","fromMatrix","",""};
			Properties = {"identity"}
		};
		["Color3"] = {
			Constructors = {"new","fromRGB","fromHSV","fromHex"};
		};
		["ColorSequence"] = {
			Constructors = {"new"};
		};
		["ColorSequenceKeypoint"] = {
			Constructors = {"new"};
		};
		["DateTime"] = {
			Constructors = {"now","fromUnixTimestamp","fromUnixTimestampMillis","fromUniversalTime","fromLocalTime","fromIsoDate"};
		};
		["DockWidgetPluginGuiInfo"] = {
			Constructors = {"new"};
		};
		["FloatCurveKey"] = {
			Constructors = {"new"};
		};
		["Font"] = {
			Constructors = {"new","fromEnum","fromName","fromId"};
		};
		["Instance"] = {
			Constructors = {"new","fromExisting"};
		};
		["NumberRange"] = {
			Constructors = {"new"};
		};
		["NumberSequence"] = {
			Constructors = {"new"};
		};
		["NumberSequenceKeypoint"] = {
			Constructors = {"new"};
		};
		["OverlapParams"] = {
			Constructors = {"new"};
		};
		["Path2DControlPoint"] = {
			Constructors = {"new"};
		};
		["PathWaypoint"] = {
			Constructors = {"new"};
		};
		["PhysicalProperties"] = {
			Constructors = {"new"};
		};
		["Random"] = {
			Constructors = {"new"};
		};
		["Ray"] = {
			Constructors = {"new"};
		};
		["RaycastParams"] = {
			Constructors = {"new"};
		};
		["Rect"] = {
			Constructors = {"new"};
		};
		["Region3"] = {
			Constructors = {"new"};
		};
		["Region3int16"] = {
			Constructors = {"new"};
		};
		["RotationCurveKey"] = {
			Constructors = {"new"};
		};
		["Secret"] = {
			Constructors = {};
		};
		["SharedTable"] = {
			Constructors = {"new"};
		};
		["TweenInfo"] = {
			Constructors = {"new"};
		};
		["UDim"] = {
			Constructors = {"new"};
		};
		["UDim2"] = {
			Constructors = {"new","fromScale","fromOffset"};
		};
		["Vector2"] = {
			Constructors = {"new"};
		};
		["Vector2int16"] = {
			Constructors = {"new"};
		};
		["Vector3"] = {
			Constructors = {"new","FromNormalId","FromAxis"};
		};
		["Vector3int16"] = {
			Constructors = {"new"};
		}
	},
	
	Enums = {
		"AccessModifierType","AccessoryType","ActionType","ActuatorRelativeTo","ActuatorType",
		"AdEventType","AdornCullingMode","AdShape","AdTeleportMethod","AdUIEventType",
		"AdUIType","AdUnitStatus","AlignType","AlphaMode","AnalyticsCustomFieldKeys",
		"AnalyticsEconomyAction","AnalyticsEconomyFlowType","AnalyticsEconomyTransactionType","AnalyticsLogLevel","AnalyticsProgressionStatus",
		"AnalyticsProgressionType","AnimationClipFromVideoStatus","AnimationPriority","AnimatorRetargetingMode","AppLifecycleManagerState",
		"ApplyStrokeMode","AppShellActionType","AppShellFeature","AppUpdateStatus","AspectType",
		"AssetCreatorType","AssetFetchStatus","AssetType","AssetTypeVerification","AudioApiRollout",
		"AudioFilterType","AudioSubType","AudioWindowSize","AutoIndentRule","AutomaticSize",
		"AvatarAssetType","AvatarChatServiceFeature","AvatarContextMenuOption","AvatarItemType","AvatarJointUpgrade",
		"AvatarPromptResult","AvatarThumbnailCustomizationType","AvatarUnificationMode","Axis","BinType",
		"BodyPart","BodyPartR15","BorderMode","BreakpointRemoveReason","BreakReason",
		"BulkMoveMode","BundleType","Button","ButtonStyle","CageType",
		"CameraMode","CameraPanMode","CameraSpeedAdjustBinding","CameraType","CatalogCategoryFilter",
		"CatalogSortAggregation","CatalogSortType","CellBlock","CellMaterial","CellOrientation",
		"CenterDialogType","CharacterControlMode","ChatCallbackType","ChatColor","ChatMode",
		"ChatPrivacyMode","ChatStyle","ChatVersion","ClientAnimatorThrottlingMode","CloseReason",
		"CollaboratorStatus","CollisionFidelity","CommandPermission","CompileTarget","CompletionItemKind",
		"CompletionItemTag","CompletionTriggerKind","ComputerCameraMovementMode","ComputerMovementMode","ConnectionError",
		"ConnectionState","ContextActionPriority","ContextActionResult","ControlMode","CoreGuiType",
		"CreateOutfitFailure","CreatorType","CreatorTypeFilter","CSGAsyncDynamicCollision","CurrencyType",
		"CustomCameraMode","DataStoreRequestType","DebuggerEndReason","DebuggerExceptionBreakMode","DebuggerFrameType",
		"DebuggerPauseReason","DebuggerStatus","DecreaseMinimumPartDensityMode","DevCameraOcclusionMode","DevComputerCameraMovementMode",
		"DevComputerMovementMode","DeveloperMemoryTag","DeviceFeatureType","DeviceLevel","DeviceType",
		"DevTouchCameraMovementMode","DevTouchMovementMode","DialogBehaviorType","DialogPurpose","DialogTone",
		"DominantAxis","DraftStatusCode","DragDetectorDragStyle","DragDetectorPermissionPolicy","DragDetectorResponseStyle",
		"DraggerCoordinateSpace","DraggerMovementMode","EasingDirection","EasingStyle","ElasticBehavior",
		"EnviromentalPhysicsThrottle","ExperienceAuthScope","ExplosionType","FacialAnimationStreamingState","FACSDataLod",
		"FieldOfViewMode","FillDirection","FilterResult","FinishRecordingOperation","FluidFidelity",
		"FluidForces","Font","FontSize","FontStyle","FontWeight",
		"ForceLimitMode","FormFactor","FramerateManagerMode","FrameStyle","FriendRequestEvent",
		"FriendStatus","FunctionalTestResult","GameAvatarType","GamepadType","GearGenreSetting",
		"GearType","Genre","GraphicsMode","GuiState","GuiType",
		"HandlesStyle","HapticEffectType","HighlightDepthMode","HorizontalAlignment","HoverAnimateSpeed",
		"HttpCachePolicy","HttpCompression","HttpContentType","HttpError","HttpRequestType",
		"HumanoidCollisionType","HumanoidDisplayDistanceType","HumanoidHealthDisplayType","HumanoidRigType","HumanoidStateType",
		"IKCollisionsMode","IKControlConstraintSupport","IKControlType","ImageAlphaType","ImageCombineType",
		"InfoType","InitialDockState","InOut","InputType","InterpolationThrottlingMode",
		"InviteState","ItemLineAlignment","IXPLoadingStatus","JoinSource","JointCreationMode",
		"KeyCode","KeyInterpolationMode","KeywordFilterType","Language","LeftRight",
		"Limb","LineJoinMode","ListDisplayMode","ListenerType","LiveEditingAtomicUpdateResponse",
		"LiveEditingBroadcastMessageType","LoadCharacterLayeredClothing","LoadDynamicHeads","LocationType","MarketplaceBulkPurchasePromptStatus",
		"MarketplaceItemPurchaseStatus","MarketplaceProductType","MarkupKind","Material","MaterialPattern",
		"MembershipType","MeshPartDetailLevel","MeshPartHeadsAndAccessories","MeshScaleUnit","MeshType",
		"MessageType","ModelLevelOfDetail","ModelStreamingBehavior","ModelStreamingMode","ModerationStatus",
		"ModifierKey","MouseBehavior","MoverConstraintRootBehaviorMode","MoveState","MuteState",
		"NameOcclusion","NetworkOwnership","NetworkStatus","NoiseType","NormalId",
		"OperationType","OrientationAlignmentMode","OutfitSource","OutfitType","OutputLayoutMode",
		"OverrideMouseIconBehavior","PackagePermission","ParticleEmitterShape","ParticleEmitterShapeInOut","ParticleEmitterShapeStyle",
		"ParticleFlipbookLayout","ParticleFlipbookMode","ParticleFlipbookTextureCompatible","ParticleOrientation","PartType",
		"PathStatus","PathWaypointAction","PermissionLevelShown","PhysicsSimulationRate","PhysicsSteppingMethod",
		"Platform","PlaybackState","PlayerActions","PlayerCharacterDestroyBehavior","PlayerChatType",
		"PoseEasingDirection","PoseEasingStyle","PositionAlignmentMode","PreferredTextSize","PrimalPhysicsSolver",
		"PrimitiveType","PrivilegeType","ProductLocationRestriction","ProductPurchaseDecision","PromptCreateAssetResult",
		"PromptCreateAvatarResult","PromptPublishAssetResult","PropertyStatus","ProximityPromptExclusivity","ProximityPromptInputType",
		"ProximityPromptStyle","QualityLevel","R15CollisionType","RaycastFilterType","RejectCharacterDeletions",
		"RenderFidelity","RenderingCacheOptimizationMode","RenderingTestComparisonMethod","RenderPriority","ReplicateInstanceDestroySetting",
		"ResamplerMode","ReservedHighlightId","RestPose","ReturnKeyType","ReverbType",
		"RibbonTool","RigScale","RigType","RollOffMode","RotationOrder",
		"RotationType","RtlTextSupport","RunContext","RunState","RuntimeUndoBehavior",
		"SafeAreaCompatibility","SalesTypeFilter","SaveAvatarThumbnailCustomizationFailure","SavedQualitySetting","SaveFilter",
		"ScaleType","ScopeCheckResult","ScreenInsets","ScreenOrientation","ScrollBarInset",
		"ScrollingDirection","SecurityCapability","SelectionBehavior","SelectionRenderMode","SelfViewPosition"
	};
	
	Globals = {
		Lua = {
			Functions = {"assert","error","getmetatable","ipairs","loadstring","newproxy","next","pairs","pcall","print","rawequal","rawget","rawlen","rawset","select","setmetatable","tonumber","tostring","type","unpack","xpcall"};
			Properties = {"_G","_VERSION"}
		};
		Roblox = {
			Functions = {"elapsedTime","gcinfo","PluginManager","require","settings","tick","time","typeof","UserSettings","version","warn"};
			Properties = {"Enum","game","plugin","shared","script","workspace"}
		}
	},
	
	Libraries = {
		["bit32"] = {
			Functions = {"bit32","arshift","band","bnot","bor","btest","bxor","countiz","countrz","extract","replace","lrotate","lshift","rrotate","rshift"};
			Properties = {}
		};
		["buffer"] = {
			Functions = {"buffer","create","fromstring","tostring","len","readi8","readu8","readi16","readu16","readi32","readu32","readf64","readi8","readu8","writei16","writeu16","writei32","writeu32","writef32","writef64","readstring","writestring","copy","fill"};
			Properties = {}
		};
		["coroutine"] = {
			Functions = {"coroutine","close","create","isyieldable","resume","running","status","wrap","yield"};
			Properties = {}
		};
		["debug"] = {
			Functions = {"traceback","info","profilebegin","profileend","getmemorycategory","setmemorycategory","resetmemorycategory","dumpcodesize"};
			Properties = {}
		};
		["math"] = {
			Functions = {"abs","acos","asin","atan","atan2","ceil","clamp","cos","cosh","deg","exp","floor","fmod","frexp","idexp","log","log","log10","max","min","modf","noise","pow","rad","random","randomseed","round","sign","sin","sinh","sqrt","tan","tanh"};
			Properties = {"huge","pi"}
		};
		["os"] = {
			Functions = {"time","difftime","date","clock"};
			Properties = {}
		};
		["string"] = {
			Functions = {"byte","char","find","format","gmatch","gsub","len","lower","match","pack","packsize","rep","reverse","split","sub","unpack","upper"};
			Properties = {}
		};
		["table"] = {
			Functions = {"clear","clone","concat","create","find","foreach","foreachi","freeze","getn","insert","isfrozen","maxn","move","pack","remove","sort","unpack"};
			Properties = {}
		};
		["task"] = {
			Functions = {"spawn","defer","delay","desynchronize","synchronize","wait","cancel"};
			Properties = {}
		};
		["utf8"] = {
			Functions = {"char","codes","codepoint","len","offset","graphemes","nfcnormalize","nfdnormalize"};
			Properties = {"charpattern"}
		}
	}
}

return Groups